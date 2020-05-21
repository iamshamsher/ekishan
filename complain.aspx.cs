using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class complain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gender = string.Empty;
        if (RadioButton1.Checked)
        {
            gender = "Male";
        }
        else if (RadioButton2.Checked)
        {
            gender = "Female";
        }

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pro"].ConnectionString);
        con.Open();
        string inscmd = "insert into complain(farmername,gender,contact,address,complain)values(@farmername,@gender,@contact,@address,@complain)";
        SqlCommand insertuser = new SqlCommand(inscmd, con);
        insertuser.Parameters.AddWithValue("@farmername", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@gender", gender);
        insertuser.Parameters.AddWithValue("@contact", TextBox3.Text);
        insertuser.Parameters.AddWithValue("@address", TextBox4.Text);
        insertuser.Parameters.AddWithValue("@complain", TextBox5.Text);
      //  insertuser.Parameters.AddWithValue("@contact", TextBox6.Text);



        try
        {
            insertuser.ExecuteNonQuery();
            con.Close();

            Response.Redirect("s.aspx");
            // ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Data Saved Successfully');"), true);
        }
        catch (Exception er)
        {
            Response.Write("something going wrong" + er.Message + "");
        }
        finally
        {

        }
    }
}


    