using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class WebUserControlsignup : System.Web.UI.UserControl
{



    protected void Button1_Click(object sender, EventArgs e)
    {
        members m = new members();
        mss.Text = m.Register(txtuser.Text, txtpwd.Text, txtname.Text, txtemail.Text, int.Parse(txtphone.Text), char.Parse(txtgender.SelectedValue), Convert.ToDateTime(txtbirth.Text), txtquestion.Text, txtanswer.Text);
        SqlConnection conn = new SqlConnection();
        //SqlCommand cmd = new SqlCommand();
        //conn.ConnectionString = ConfigurationManager.ConnectionStrings["userscs"].ToString();

        //cmd.Connection = conn;
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.CommandText = "managemembers";
        //cmd.Parameters.AddWithValue("@check", "a");
        //cmd.Parameters.AddWithValue("@username", txtuser.Text);
        //cmd.Parameters.AddWithValue("@password", txtpwd.Text);
        //cmd.Parameters.AddWithValue("@name", txtname.Text);
        //cmd.Parameters.AddWithValue("@email ", txtemail.Text);
        //cmd.Parameters.AddWithValue("@phone", int.Parse(txtphone.Text));
        //cmd.Parameters.AddWithValue("@gender", txtgender.SelectedValue);
        //cmd.Parameters.AddWithValue("@birthdate", Convert.ToDateTime(txtbirth.Text));
        //cmd.Parameters.AddWithValue("@questuion", txtquestion.Text);
        //cmd.Parameters.AddWithValue("@answer", txtanswer.Text);

        //conn.Open();
        //try
        //{
        //    cmd.ExecuteNonQuery();
        //    mss.Text = "user added successfully";
        //}
        //catch (SqlException ex)
        //{
        //    mss.Text = ex.Number.ToString();
        //    if (ex.Number == 2627)
        //        mss.Text = "username already existing please change username";
        //    else
        //        mss.Text = ex.Message;
        //}
        //conn.Close();

    }

}