using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddLoan : System.Web.UI.Page
{
    string userID = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        UserInfo user = (UserInfo)HttpContext.Current.Session["pl_user"];
        userID = user.userID.ToString();
    }

    protected void onClick_btnAddLoan(object sender, EventArgs e)
    {
        Loan addL = new Loan();
        addL.b_Email = txbBEmail.Text;
        addL.b_firstName = txbBFirstName.Text;
        addL.b_lastName = txbBLastName.Text;
        addL.loanDate = Convert.ToDateTime(txbLoanDate.Text);
        addL.amount = Convert.ToDouble(txbLoanAmount.Text);
        addL.term = Convert.ToInt32(txbLoanTerm.Text);
        addL.rate = Convert.ToDouble(txbInterestRate.Text);
        DateTime dt = DateTime.Now;
        string num = userID + dt.ToString("ddMMyyhhmmss");
        addL.loanNumber = num;
        addL.addLoan();
        Response.Redirect("Summary.aspx");
    }
}