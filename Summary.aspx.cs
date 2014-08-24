using System;
using System.Collections.Generic;
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
    }

    protected void onClick_btnAddLoan(object sender, EventArgs e)
    {
        Response.Redirect("AddLoan.aspx");
    }
}