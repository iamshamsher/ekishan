using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Data.SqlClient;
using System.Configuration;

public partial class change_password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Pro"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void Button1_Click1(object sender, EventArgs e)
    {


        string paswd;
        paswd = "NewPass"; // set your password

        con.Open();

        String str = "update reg set password=@password where email='" + Session["email"].ToString() + "' and password=@oldpass ";

        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("oldpass", TextBox1.Text);

        cmd.Parameters.AddWithValue("password", TextBox2.Text);
        cmd.ExecuteNonQuery();
        ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('Password Changed...');", true);
        con.Close();


    }
    public string getvalue(string sqlquery)
    {
        string sendvalue = "";
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Pro"].ConnectionString);

            if (con.State != ConnectionState.Open)
                con.Open();
            SqlCommand drcmd = new SqlCommand(sqlquery, con);
            SqlDataReader dr = null;
            dr = drcmd.ExecuteReader();
            while (dr.Read())
            {
                sendvalue = dr[0].ToString();
            }
            dr.Close();
            return sendvalue;
        }
        catch (Exception ex)
        {
            return ex.Message.ToString();
        }
        finally
        {


        }


    }
}