
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub calculateButton_Click(sender As Object, e As EventArgs) Handles calculateButton.Click
        Dim wage, hour, preDeduct, afterDeduct, grossPay, taxRate, tax, netPay As Decimal
        wage = Val(hourlyWageTextBox.Text)
        hour = Val(hoursPerWeekTextBox.Text)
        preDeduct = Val(pretaxDeductTextBox.Text)
        afterDeduct = Val(afterTaxDeductionTextBox.Text)

        grossPay = wage * hour
        If grossPay < 500 Then
            taxRate = 0.18
        ElseIf grossPay >= 500 Then
            taxRate = 0.22
        End If

        If preTaxDropDownList.SelectedValue = 1 Then
            tax = grossPay * (1 - 0.01 * preDeduct) * taxRate
        ElseIf preTaxDropDownList.SelectedValue = 2 Then
            tax = taxRate * (grossPay - preDeduct)
        End If
        If afterTaxDeductDropDownList.SelectedValue = 1 Then
            netPay = (grossPay - tax) * (1 - 0.01 * afterDeduct)
        ElseIf afterTaxDeductDropDownList.SelectedValue = 2 Then
            netPay = grossPay - (tax - afterDeduct)
        End If

        netPayLabel.Visible = True
        netpayResultLabel.Text = netPay.ToString

    End Sub

    Protected Sub clearButton_Click(sender As Object, e As EventArgs) Handles clearButton.Click
        hourlyWageTextBox.Text = String.Empty
        hoursPerWeekTextBox.Text = String.Empty
        pretaxDeductTextBox.Text = String.Empty
        afterTaxDeductionTextBox.Text = String.Empty
        preTaxDropDownList.SelectedValue = 1
        afterTaxDeductDropDownList.SelectedValue = 1
        netPayLabel.Visible = False
        netpayResultLabel.Text = String.Empty
    End Sub
End Class
