using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
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
            str = "select count(*) from reg where email = @email and password = @password";

            com = new SqlCommand(str, con);

            com.CommandType = CommandType.Text;

           Session["email"] = TextBox1.Text;

            com.Parameters.AddWithValue("@email", Session["email"]);

            com.Parameters.AddWithValue("@password", TextBox2.Text);

            obj = com.ExecuteScalar();

            if (Convert.ToInt32(obj) != 0)
            {

                Response.Redirect("Fertilizer.aspx");

            }

            else
            {
                // Response.Redirect("main.aspx");
                lbl.Text = "Invalid User name or Password";

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


