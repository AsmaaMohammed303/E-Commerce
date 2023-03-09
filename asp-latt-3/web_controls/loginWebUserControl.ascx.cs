using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class loginWebUserControl : System.Web.UI.UserControl
{
    public void redirect(string txtuser)
    {

        if (txtuser == "admin")
            Response.Redirect("admin/admin.aspx");
        else
        {
            MultiView5.ActiveViewIndex = 1;
            Label5.Text = "welcome  " + txtuser;
        }
        //string []keys={"user","pass"};
    }
   //____________________________________________________________________
    protected void Button1_Click(object sender, EventArgs e)
    {
        members m = new members();
        if (m.login(txtuser.Text, txtpass.Text))
        {
            cookie.createcooki("login",new string[]{"user","pass"},new string[]{txtuser.Text,txtpass.Text},!CheckBox1.Checked,Response);
            redirect(txtuser.Text);
        }

        else
            mss.Text = "username or password incorrect";
        
        //cookie.createcooki("login",keys);
    }

    //______________________________________________________________________
    protected void Page_Load(object sender, EventArgs e)
    {
        string user = cookie.readfromcookie("login", "user", Request);
        if (user != null)
        {
            redirect(user);
            //LinkButton2.Visible = true;
        }
    }
    //_______________________________________________________________________
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        cookie.removecookie("login",Response);
        Response.Redirect("Default.aspx");
    }
   
}