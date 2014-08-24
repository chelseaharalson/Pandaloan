using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void onClick_Create(object sender, EventArgs e)
    {
        User user = new User();
        user.email = txbEmail.Text;
        user.password = txbPassword.Text;
        user.firstName = txbFirstName.Text;
        user.lastName = txbLastName.Text;
        user.address = txbAddress.Text;
        user.city = txbCity.Text;
        user.state = ddl_State.SelectedValue;
        user.zipcode = txbZipCode.Text;
        if (user.emailExists(user.email))
        {
            Response.Write("<script>alert('Email already exists.');</script>");
        }
        else
        {
            user.create();
            Response.Redirect("Summary.aspx");
        }
    }
}