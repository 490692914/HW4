<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Estimate Net Pay</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="hourWageLabel" runat="server" Text="Hourly wage"></asp:Label>
        <p>
            <asp:TextBox ID="hourlyWageTextBox" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="hourPerWeekLabel" runat="server" Text="Number of hours worked"></asp:Label>
        <p>
            <asp:TextBox ID="hoursPerWeekTextBox" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="pretaxDeductionLabel" runat="server" Text="Pre-tax deduction"></asp:Label>
    </div>
        <div>
            <p>
            <asp:TextBox ID="pretaxDeductTextBox" runat="server">0</asp:TextBox> &nbsp &nbsp &nbsp &nbsp
            <asp:DropDownList ID="preTaxDropDownList" runat="server">
                <asp:ListItem Selected="True" Value="1">% of gross pay</asp:ListItem>
                <asp:ListItem Value="2">$ Fixed Amount</asp:ListItem>
            </asp:DropDownList>
        </p>
        </div>
        <div>
        <asp:Label ID="afterTaxDeductionLabel" runat="server" Text="After tax deduction"></asp:Label>
        <p>
            <asp:TextBox ID="afterTaxDeductionTextBox" runat="server">0</asp:TextBox> &nbsp &nbsp &nbsp &nbsp
            <asp:DropDownList ID="afterTaxDeductDropDownList" runat="server">
                <asp:ListItem Selected="True" Value="1">% of net pay</asp:ListItem>
                <asp:ListItem Value="2">$ Fixed Amount</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div id="buttons">
        <asp:Button ID="calculateButton" runat="server" Text="Calculate" />
        <p>
            <asp:Button ID="clearButton" runat="server" Text="Clear" />
        </p>
        </div>

        <div id="results">
            <br />
            <asp:Label ID="netPayLabel" runat="server" Text="Net Pay:" Visible="False"></asp:Label> &nbsp &nbsp &nbsp &nbsp
            <asp:Label ID="netpayResultLabel" runat="server"></asp:Label>
        <p>
            &nbsp;</p>
        </div>
    </form>
</body>
</html>
