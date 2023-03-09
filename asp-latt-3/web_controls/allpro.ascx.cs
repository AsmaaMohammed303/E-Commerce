using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_controls_allpro : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        // string catnum=;
        if (Request.QueryString["catno"] !=null)
           SqlDataSource1.SelectCommand = "SELECT * FROM [product] where catno="+Request.QueryString["catno"].ToString();
       
        else if(Request.QueryString["q"]!=null)
            SqlDataSource1.SelectCommand = string.Format("SELECT * FROM [product] where productname like'%{0}%' or description like '%{0}%'",Request.QueryString["q"].ToString());
        else
           SqlDataSource1.SelectCommand = "SELECT * FROM [product]";
    }


}