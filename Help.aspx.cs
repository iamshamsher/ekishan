using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System;


public partial class Help : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, System.EventArgs e)
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
        string inscmd = "insert into help(farmer_name,father_name,contact,gender,address,question)values(@farmer_name,@father_name,@contact,@gender,@address,@question)";
        SqlCommand insertuser = new SqlCommand(inscmd, con);
        insertuser.Parameters.AddWithValue("@farmer_name", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@father_name", TextBox2.Text);
        insertuser.Parameters.AddWithValue("@contact", TextBox3.Text);
        insertuser.Parameters.AddWithValue("@gender", gender);
        insertuser.Parameters.AddWithValue("@address", TextBox6.Text);
        insertuser.Parameters.AddWithValue("@question", TextBox4.Text);
        //   insertuser.Parameters.AddWithValue("@block", TextBox7.Text);
        //  insertuser.Parameters.AddWithValue("@quantity", TextBox8.Text);
        //    insertuser.Parameters.AddWithValue("@moza", TextBox9.Text);
        //    insertuser.Parameters.AddWithValue("@khata_no", TextBox10.Text);
        //    insertuser.Parameters.AddWithValue("@plot_no", TextBox11.Text);
        //    insertuser.Parameters.AddWithValue("@address", TextBox12.Text);
        //    insertuser.Parameters.AddWithValue("@land_paper", TextBox13.Text);
        //    insertuser.Parameters.AddWithValue("@pan_card", TextBox14.Text);
        //    insertuser.Parameters.AddWithValue("@contact", TextBox15.Text);

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