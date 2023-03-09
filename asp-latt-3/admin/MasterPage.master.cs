using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string user = cookie.readfromcookie("login","user",Request);
        if (user != null)
        {
            if(user!="admin")
                Response.Redirect("../Default.aspx");
        }
        else
            Response.Redirect("../Default.aspx");
    }
}
