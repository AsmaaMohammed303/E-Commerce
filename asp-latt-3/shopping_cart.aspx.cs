using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            refreshdata();
        if (Session["cart"] == null)
            hplcheck.Visible = false;
        else
            hplcheck.Visible = true;
    }
    private void refreshdata()
    {
        double _total = 0;
        int x;
        GridView1.DataSource = (DataTable)Session["cart"];
        GridView1.DataBind();
        for (x = 0; x < GridView1.Rows.Count; x++)
            _total += Convert.ToDouble(GridView1.Rows[x].Cells[5].Text);
        total.Text = "  total of orders equal " + _total.ToString() + " of " + x.ToString() + " product(s)";
   
     }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable tbl;
        if (Session["cart"] != null)
        {
            tbl =(DataTable)Session["cart"];
            string[] pk = { GridView1.Rows[e.RowIndex].Cells[0].Text, GridView1.Rows[e.RowIndex].Cells[1].Text };
            DataRow row= tbl.Rows.Find(pk);
            if (row != null)
                row.Delete();
            Session["cart"] = tbl;
            GridView1.DataBind();
            refreshdata();
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        refreshdata();
        GridView1.DataBind();


    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        refreshdata();
        DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtqy=(TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
        if (Session["cart"] != null)
        {
            DataTable tbl = (DataTable)Session["cart"];
            string[] pk = { GridView1.Rows[e.RowIndex].Cells[0].Text, GridView1.Rows[e.RowIndex].Cells[1].Text };
            DataRow row = tbl.Rows.Find(pk);
            row[4]= txtqy.Text;
            row[5] =Convert.ToInt16( txtqy.Text) * Convert.ToDouble(row[3]);
            //tbl.Rows[e.RowIndex] = row;
            Session["cart"] = tbl;
            refreshdata();
            GridView1.EditIndex = -1;
            DataBind();
           // Response.Redirect("cart.aspx");
        }
    }
}
