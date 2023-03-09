using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_user_control_aggadmin : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        product pro = new product();
        members m = new members();
        lblmaxprice.Text = pro.maxpriceproduct().ToString();

        lblprocount.Text = pro.countproducts().ToString();

        lblpronameofmaxprice.Text = pro.maxpriceproductname();

      
        imgmper.Width = Convert.ToInt16(m.genderprecentage("m")*100);
        imgfper.Width = Convert.ToInt16(m.genderprecentage("f") * 100);
        lblmper.Text = m.genderprecentage("m") * 100 + "%";
        lblfper.Text = m.genderprecentage("f") * 100 + "%";
    }
 
}