using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_user_control_product_web_user : System.Web.UI.UserControl
{
    product pro = new product();
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
        //txtno.Text = "";  not open
        txtid.Text = pro.getnextproid();
        txtname.Text = "";
        txtprice.Text = "";
        txtquan.Text = "";
        txtdesc.Text = "";
        img.Visible = false;
        txtid.ReadOnly = false;
        
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource=pro.search(rdofields.SelectedValue,txtsrch.Text);
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        mss.Text = "";
        btnremove.Enabled = false;
        btnupdate.Enabled = false;
        
    }
    protected void btnremove_Click(object sender, EventArgs e)
    {
        if (pro.removeproduct(GridView1.SelectedRow.Cells[1].Text,GridView1.SelectedRow.Cells[2].Text))
            mss.Text = "product deleted";
        else
            mss.Text = "product not deleted";
        GridView1.DataBind();
        //databind here empty the gridview because we dont mention datasource
        btnremove.Enabled = false;
        btnupdate.Enabled = false;
        GridView1.Visible = false;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        txtno.Text = GridView1.SelectedRow.Cells[1].Text;
        txtid.Text = GridView1.SelectedRow.Cells[2].Text;
        txtname.Text = GridView1.SelectedRow.Cells[3].Text;
        txtprice.Text = GridView1.SelectedRow.Cells[4].Text;
        txtquan.Text = GridView1.SelectedRow.Cells[5].Text;
        txtdesc.Text = GridView1.SelectedRow.Cells[7].Text;
        txtid.ReadOnly = true;
        img.Visible = true;
       // img.ImageUrl = "../../catimages/" + txtid.Text + ".jpg";
        img.ImageUrl = "..//..//catimages//" + txtid.Text + ".jpg";
        MultiView1.ActiveViewIndex = 0;

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        pro.catno = txtno.SelectedValue;
        pro.productid = txtid.Text;
        pro.productname=txtname.Text;
        pro.price= Convert.ToDouble(txtprice.Text);
        pro.availablequality=Convert.ToInt16(txtquan.Text);
        pro.description=txtdesc.Text ;
        img.Visible = false;

        if (txtid.ReadOnly)
        {
            if (pro.update())
            {
                mss.Text = "product updated successfully";
                MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                msg.Text = "porduct not updated";
            }

        }
        else if (pro.Add())
            {
                mss.Text = "product added successfully";
                MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                msg.Text = "product not added ,please change product number";
            }
        
        //added picture
        if (FileUpload1.HasFile)
        {
            //get actuall path untill that folder and that folder from my project
            FileUpload1.SaveAs(Server.MapPath("../proimages") + "//" + txtid.Text + ".jpg");
            mss.Text += "</br >image uploaded successfully";
            // FileUpload1.SaveAs(Server.MapPath("catimages"); Not Not Not error in path
            // // is path of project
        }
    }



    protected void txtid_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtno_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}