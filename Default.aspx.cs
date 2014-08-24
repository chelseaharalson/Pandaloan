using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void onClick_Login(object sender, EventArgs e)
    {
        User user = new User();
        user.email = txbEmail.Text;
        user.password = txbPassword.Text;
        if (user.login(user.email, user.password))
        {
            Response.Redirect("Summary.aspx");
        }
        else
        {
            Response.Write("<script>alert('Incorrect login. Please try again.');</script>");
        }
    }
}