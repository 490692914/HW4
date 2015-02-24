
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub calculateButton_Click(sender As Object, e As EventArgs) Handles calculateButton.Click
        Dim wage, hour, preDeduct, afterDeduct, grossPay, taxablePay, tax, pay, netPay As Decimal
        wage = Val(hourlyWageTextBox.Text)
        hour = Val(hoursPerWeekTextBox.Text)
        preDeduct = Val(pretaxDeductTextBox.Text)
        afterDeduct = Val(afterTaxDeductionTextBox.Text)

        grossPay = wage * hour
        taxablePay = grossPay - preDeduct

        If grossPay < 500 Then
            tax = taxablePay * 0.18
        Else : tax = taxablePay * 0.22
        End If

        pay = taxablePay - tax
        netPay = pay - afterDeduct
        netPayLabel.Visible = True
        netpayResultLabel.Text = netPay.ToString

    End Sub

    Protected Sub clearButton_Click(sender As Object, e As EventArgs) Handles clearButton.Click
        hourlyWageTextBox.Text = String.Empty
        hoursPerWeekTextBox.Text = String.Empty
        pretaxDeductTextBox.Text = String.Empty
        afterTaxDeductionTextBox.Text = String.Empty
        netPayLabel.Visible = False
        netpayResultLabel.Text = String.Empty
    End Sub
End Class
