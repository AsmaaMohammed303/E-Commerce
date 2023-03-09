using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class web_controls_checkout : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["login"] == null)
        {
            Wizard1.ActiveStepIndex = 0;
        }
        if (Session["cart"] == null)
        {
            Wizard1.Visible = false;
            Response.Redirect("cart.aspx");
        }


    }

    protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
    {
        if (Request.Cookies["login"] == null)
        {
            Wizard1.ActiveStepIndex = 0;
        }
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        if (Request.Cookies["login"] != null && Session["cart"]!=null)
        {
            card c = new card();
            order o = new order();
            orderdetails od = new orderdetails();
            DataTable card= (DataTable)Session["cart"];
            members m=new members();

            c.cardtype = ddlcard.SelectedValue;
            c.Cardnum = txtcardnum.Text;
            c.month = txtmonth.Text;
            c.year = txtyear.Text;
            c.namecard = txtnameincard.Text;
            c.username = Request.Cookies["login"]["user"].ToString();


            o.orderno = o.getnextorderno();
           // o.orderdate = DateTime.Now;
            o.shipname = txtname.Text;
            o.shipcity = txtcity.Text;
            o.shiparea = txtarea.Text;
            o.shipaddress = txtarea.Text;
            o.members = c.username;

            //card--------------------------------------------
            if (c.Add())
                lblmsg.Text = "your card data saved";
            else
            {
                c.update();
                lblmsg.Text = "card data already existing";
            }

            //order details----------------------------------
            if (o.Add())
            {
                lblmsg.Text += "<br>order data saved</br>";
                od.orderno = o.orderno;
                for (int x = 0; x < card.Rows.Count; x++)
                {
                    od.catno = card.Rows[x][0].ToString();
                    od.productid = card.Rows[x][1].ToString();
                    od.quantity = Convert.ToInt16(card.Rows[x][4].ToString());
                    od.sellprice = Convert.ToDouble(card.Rows[x][3].ToString());
                    od.discount = 0;
                    if (od.Add())
                        lblmsg.Text += "<br/>product " +od.catno+ "-" +od.productid+ "is added ";
                    else
                        lblmsg.Text += "<br/>product " + od.catno + "-" + od.productid + "is not added ";
                }
                //send an email
                Wizard1.ActiveStepIndex = 5;
                if(cookie.sendmail("leader order",lblmsg.Text,m.getemail(c.username)))
                lblmsg.Text += "mail send to confirmation";
                else
                lblmsg.Text +="<br />mail not send to you";
            }
            else
                lblmsg.Text = "<br />sorry order not completed";
            }
        else
            lblmsg.Text = "please add any product to shopping cart and login";
           
        }//end finish button
    
}