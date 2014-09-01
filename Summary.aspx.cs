using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Summary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UserInfo user = (UserInfo)HttpContext.Current.Session["pl_user"];
        lblFirstName.Text = user.firstName;
        lblLastName.Text = user.lastName;
        lblAddress.Text = user.address;
        lblCity.Text = user.city;
        lblState.Text = user.state;
        lblZipCode.Text = user.zipcode;

        if (!IsPostBack)
        {
            BindData();
        }
    }

    protected void onClick_btnAddLoan(object sender, EventArgs e)
    {
        Response.Redirect("AddLoan.aspx");
    }

    protected void BindData()
    {
        UserInfo user = (UserInfo)HttpContext.Current.Session["pl_user"];
        string sql = "SELECT loanID, loanNumber, b_firstName + ' ' + b_lastName AS name, CONVERT(VARCHAR(10), loanDate, 101) AS loanDate, CONVERT(varchar(12), amount, 1) AS amount FROM Loan NOLOCK WHERE userID="
            + user.userID.ToString()
            + " ORDER BY loanDate";

        SQLfunctions sf = new SQLfunctions();
        DataSet ds = sf.selectSQLDataSet(sql);

        grdLoans.DataSource = ds;
        grdLoans.DataBind();
    }

   protected void onClick_btnSelectLoan(object sender, EventArgs e)
   {
       //Get the button that raised the event
       Button btn = (Button)sender;

       //Get the row that contains this button
       GridViewRow gvr = (GridViewRow)btn.NamingContainer;

       //Get rowindex
       int rowindex = gvr.RowIndex;

       int loanID = (int)grdLoans.DataKeys[rowindex].Value;

       HttpContext.Current.Session.Add("pl_loan", loanID);

       Response.Redirect("LoanDetail.aspx");
   }
}