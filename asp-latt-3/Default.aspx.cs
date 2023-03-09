using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string user = cookie.readfromcookie("login", "user", Request);
        if (user != null)
        {
            Label5.Text = "welcome  " + user;
            LinkButton2.Visible = true;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        cookie.removecookie("login", Response);
        LinkButton2.Visible = false;
        Label5.Text = "";
    }
}