using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoanDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int loanID = (int)HttpContext.Current.Session["pl_loan"];
        Loan loan = new Loan();
        loan.selectLoan(loanID);

        txbBEmail.Text = loan.b_Email;
        txbBFirstName.Text = loan.b_firstName;
        txbBLastName.Text = loan.b_lastName;
        txbInterestRate.Text = loan.rate.ToString("0.000");
        txbLoanAmount.Text = loan.amount.ToString("0.00");
        txbLoanDate.Text = loan.loanDate.ToString("MM/dd/yyyy");
        txbLoanTerm.Text = loan.term.ToString();
    }
}