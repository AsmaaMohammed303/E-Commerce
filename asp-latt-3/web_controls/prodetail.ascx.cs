using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class web_controls_prodetail : System.Web.UI.UserControl
{
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        product pro = new product();
        if (Request.QueryString["catno"] != null && Request.QueryString["productid"] != null)
        {
            if (pro.find(Request.QueryString["catno"].ToString(), Request.QueryString["productid"].ToString()))
            {
                lblcat.Text = pro.catno;
                lblproid.Text = pro.productid;
                lblname.Text = pro.productname;
                lblprice.Text = pro.price.ToString();
                lblquan.Text = pro.availablequality.ToString();
                txtquan.Text = pro.availablequality.ToString();
                lbldesc.Text = pro.description;
                proimg.ImageUrl = "..//proimages//" +pro.productid+ ".jpg";

            }
        }
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        DataTable tbl;
        if (Session["cart"] == null)
        {
            tbl = new DataTable();
            tbl.Columns.Add("catno");
            tbl.Columns.Add("productid");
            tbl.Columns.Add("productname");
            tbl.Columns.Add("price");
            tbl.Columns.Add("quantity");
            tbl.Columns.Add("subtotal");
            DataColumn[] cols={tbl.Columns[0],tbl.Columns[1]};
            tbl.Constraints.Add("cart_pk",cols,true);
        }
        else
        {
            tbl = (DataTable)Session["cart"];
            // Session.Timeout = 60;
            DataRow row = tbl.NewRow();
            row[0] = lblcat.Text;
            row[1] = lblproid.Text;
            row[2] = lblname.Text;
            row[3] = lblprice.Text;
            row[4] = txtqy.Text;
            row[5] = Convert.ToInt16(txtqy.Text) * Convert.ToDouble(lblprice.Text);
            tbl.Rows.Add(row);
        }
        Session["cart"] = tbl;
        Response.Redirect("allcat.aspx");
    }
}