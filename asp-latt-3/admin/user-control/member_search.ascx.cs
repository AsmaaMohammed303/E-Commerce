using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_user_control_member_search : System.Web.UI.UserControl
{
    members m = new members();
    protected void Page_Load(object sender, EventArgs e)
    {
        btnremove.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        members m = new members();
        GridView1.DataSource=m.search(rdofields.SelectedValue,txtsrch.Text);
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        btnremove.Enabled = false;
        mss.Text = "";
    }

    protected void btnremove_Click(object sender, EventArgs e)
    {
        m.unsubscribe(GridView1.SelectedRow.Cells[1].Text);
        //to print on screen
       // Response.Write(GridView1.SelectedRow.Cells[1].Text);
        btnremove.Enabled = false;
        GridView1.DataBind();
        mss.Text = "user deleted successfully";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnremove.Enabled = true;
    }
}