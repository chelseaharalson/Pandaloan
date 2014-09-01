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
        Response.Write(loanID);
    }
}