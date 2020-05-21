using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Cold_storage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void Button1_Click1(object sender, EventArgs e)
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
        string inscmd = "insert into cold_storage(farmer_name,crop_name,quantity_of_crop,types_crop,gender,time_duration,address,contact,username,date)values(@farmer_name,@crop_name,@quantity_of_crop,@types_crop,@gender,@time_duration,@address,@contact,@username,@date)";
        SqlCommand insertuser = new SqlCommand(inscmd, con);
        insertuser.Parameters.AddWithValue("@farmer_name", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@crop_name", TextBox2.Text);
        insertuser.Parameters.AddWithValue("@quantity_of_crop", TextBox3.Text);
        insertuser.Parameters.AddWithValue("@types_crop", TextBox4.Text);
        insertuser.Parameters.AddWithValue("@gender", gender);
        insertuser.Parameters.AddWithValue("@time_duration", TextBox6.Text);
        insertuser.Parameters.AddWithValue("@address", TextBox7.Text);
        insertuser.Parameters.AddWithValue("@contact", TextBox8.Text);
        insertuser.Parameters.AddWithValue("@username", Session["email"].ToString());
        insertuser.Parameters.AddWithValue("@Date", DateTime.Now);
        //   insertuser.Parameters.AddWithValue("@plot_no", TextBox11.Text);
        //    insertuser.Parameters.AddWithValue("@address", TextBox12.Text);
        //    insertuser.Parameters.AddWithValue("@land_paper", TextBox13.Text);
        //    insertuser.Parameters.AddWithValue("@pan_card", TextBox14.Text);
        //    insertuser.Parameters.AddWithValue("@contact", TextBox15.Text);

        try
        {
            insertuser.ExecuteNonQuery();
            con.Close();

            Response.Redirect("s.aspx");
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Data Saved Successfully');"), true);
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
