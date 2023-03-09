using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_user_control_category_web_user : System.Web.UI.UserControl
{
    category cat = new category();
    protected void Page_Load(object sender, EventArgs e)
    {
        btnremove.Enabled = false;
        btnupdate.Enabled = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnremove.Enabled = true;
        btnupdate.Enabled = true;
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        txtnum.Text = "";
        txttitle.Text = "";
        txtdesc.Text = "";
        img.Visible = false;
        txtdesc.ReadOnly = false;
        txtnum.Text = cat.getnextcatno();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource=cat.search(rdofields.SelectedValue,txtsrch.Text);
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        mss.Text = "";
        btnremove.Enabled = false;
        btnupdate.Enabled = false;
        
    }
    protected void btnremove_Click(object sender, EventArgs e)
    {
        if (cat.removecat(GridView1.SelectedRow.Cells[1].Text))
            mss.Text = "category deleted";
        else
            mss.Text = "category not deleted, may have products";
        GridView1.DataBind();
        //databind here empty the gridview because we dont mention datasource
        btnremove.Enabled = false;
        btnupdate.Enabled = false;
        GridView1.Visible = false;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        txtnum.Text = GridView1.SelectedRow.Cells[1].Text;
        txttitle.Text = GridView1.SelectedRow.Cells[2].Text;
        txtdesc.Text = GridView1.SelectedRow.Cells[3].Text;
        txtnum.ReadOnly=true;
        img.ImageUrl = "../../catimages/" + txtnum.Text+".jpg";
        MultiView1.ActiveViewIndex = 0;
        img.Visible = true;

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cat.catno =txtnum.Text;
        cat.catname = txttitle.Text;
        cat.description = txtdesc.Text;
        if (txtnum.ReadOnly)
        {
            if (cat.update())
            {
                mss.Text = "category updated successfully";
                MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                mss.Text = "category not updated";
            }
        }
        else if (cat.Add())
        {
            mss.Text = "category added successfully";
            MultiView1.ActiveViewIndex = 1;
        }
        else
        {
            mss.Text = "category not added ,please change category number";
        }
        //added picture
        if (FileUpload1.HasFile)
        {
            //get actuall path untill that folder and that folder from my project
            FileUpload1.SaveAs(Server.MapPath("../catimages")+"//"+txtnum.Text+".jpg");
            mss.Text += "</br >image uploaded successfully";
            // FileUpload1.SaveAs(Server.MapPath("catimages"); Not Not Not error in path
            // // is path of project
        }
    }
}