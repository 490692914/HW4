<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="hourWageLabel" runat="server" Text="Hourly wage"></asp:Label>
    
    </div>
        <p>
            <asp:TextBox ID="hourlyWageTextBox" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="hourPerWeekLabel" runat="server" Text="Number of hours worked"></asp:Label>
        <p>
            <asp:TextBox ID="hoursPerWeekTextBox" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="pretaxDeductionLabel" runat="server" Text="Pre-tax deduction"></asp:Label>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="afterTaxDeductionLabel" runat="server" Text="After tax deduction"></asp:Label>
        <p>
            <asp:TextBox ID="afterTaxDeductionTextBox" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="calculateButton" runat="server" Text="Calculate" />
        <p>
            <asp:Button ID="clearButton" runat="server" Text="Clear" />
        </p>
        <div>
            <br />
            <asp:Label ID="netPayLabel" runat="server" Text="Net Pay:"></asp:Label>
        </div>
        <p>
            <asp:Label ID="netpayResultLabel" runat="server" Enabled="False"></asp:Label>
        </p>
    </form>
</body>
</html>
