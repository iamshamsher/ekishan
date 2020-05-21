using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pro"].ConnectionString);
    string str;
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {



        object obj = null;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pro"].ConnectionString);

        con.Open();
        str = "select count(*) from admin where admin = @admin and password = @password";

        com = new SqlCommand(str, con);

        com.CommandType = CommandType.Text;

        Session["admin"] = TextBox1.Text;

        com.Parameters.AddWithValue("@admin", Session["admin"]);

        com.Parameters.AddWithValue("@password", TextBox2.Text);

        obj = com.ExecuteScalar();

        if (Convert.ToInt32(obj) != 0)
        {

            Response.Redirect("user_details.aspx");

        }

        else
        {
            // Response.Redirect("main.aspx");
            lbl.Text = "Invalid User name and Password";

            //clear();

        }

        con.Close();

    }



    private void clear()
    {

        TextBox1.Text = "";

        TextBox2.Text = "";


    }

}

