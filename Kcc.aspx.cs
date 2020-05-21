using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Kcc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
       string giram = Guid.NewGuid().ToString();

        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.SaveAs(Server.MapPath("Photo/" + giram + filename));
        string File_Type = Path.GetExtension(filename);

        HttpPostedFile file = FileUpload1.PostedFile;
        byte[] document = new byte[file.ContentLength];
        file.InputStream.Read(document, 0, file.ContentLength);

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
        string inscmd = "insert into kcc(farmer_name,father_name,dob,gender,uid_no,district,block,quantity,moza,khata_no,plot_no,address,land_paper,pan_card,contact,email_id,filename,filepath,username,date)values(@farmer_name,@father_name,@dob,@gender,@uid_no,@district,@block,@quantity,@moza,@khata_no,@plot_no,@address,@land_paper,@pan_card,@contact,@email_id,@filename,@filepath,@username,@date)";
        SqlCommand insertuser = new SqlCommand(inscmd, con);
        insertuser.Parameters.AddWithValue("@farmer_name", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@father_name", TextBox2.Text);
        insertuser.Parameters.AddWithValue("@dob", TextBox3.Text);
        insertuser.Parameters.AddWithValue("@gender", gender);
        insertuser.Parameters.AddWithValue("@uid_no", TextBox5.Text);
        insertuser.Parameters.AddWithValue("@district", TextBox6.Text);
        insertuser.Parameters.AddWithValue("@block", TextBox7.Text);
        insertuser.Parameters.AddWithValue("@quantity", TextBox8.Text);
        insertuser.Parameters.AddWithValue("@moza", TextBox9.Text);
        insertuser.Parameters.AddWithValue("@khata_no", TextBox10.Text);
        insertuser.Parameters.AddWithValue("@plot_no", TextBox11.Text);
        insertuser.Parameters.AddWithValue("@address", TextBox12.Text);
        insertuser.Parameters.AddWithValue("@land_paper", TextBox13.Text);
        insertuser.Parameters.AddWithValue("@pan_card", TextBox14.Text);
        insertuser.Parameters.AddWithValue("@contact", TextBox15.Text);
        insertuser.Parameters.AddWithValue("@email_id", TextBox16.Text);
        insertuser.Parameters.AddWithValue("@filename", giram + filename);
        insertuser.Parameters.AddWithValue("@filepath", "Photo" + filename);

        insertuser.Parameters.AddWithValue("@username", Session["email"].ToString());
        insertuser.Parameters.AddWithValue("@date", DateTime.Now);

        try
        {
            insertuser.ExecuteNonQuery();
            con.Close();

           // Response.Redirect("s.aspx");
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
    protected void Button2_Click(object sender, EventArgs e)
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
       // string inscmd = "insert into kcc(farmer_name,father_name,dob,gender,uid_no,district,block,quantity,moza,khata_no,plot_no,address,land_paper,pan_card,contact,email_id,filename,filepath,username,date)values(@farmer_name,@father_name,@dob,@gender,@uid_no,@district,@block,@quantity,@moza,@khata_no,@plot_no,@address,@land_paper,@pan_card,@contact,@email_id,@filename,@filepath,@username,@date)";
        string inscmd = "update  kcc set farmer_name=@farmer_name,father_name=@father_name,dob=@dob,gender=@gender,uid_no=@uid_no,district=@district,block=@block,quantity=@quantity,moza=@moza,khata_no=@khata_no,plot_no=@plot_no,address=@address,land_paper=@land_paper,pan_card=@pan_card,contact=@contact,email_id=@email_id,date=@date where username=@username";


        SqlCommand insertuser = new SqlCommand(inscmd, con);
        insertuser.Parameters.AddWithValue("@farmer_name", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@father_name", TextBox2.Text);
        insertuser.Parameters.AddWithValue("@dob", TextBox3.Text);
        insertuser.Parameters.AddWithValue("@gender", gender);
        insertuser.Parameters.AddWithValue("@uid_no", TextBox5.Text);
        insertuser.Parameters.AddWithValue("@district", TextBox6.Text);
        insertuser.Parameters.AddWithValue("@block", TextBox7.Text);
        insertuser.Parameters.AddWithValue("@quantity", TextBox8.Text);
        insertuser.Parameters.AddWithValue("@moza", TextBox9.Text);
        insertuser.Parameters.AddWithValue("@khata_no", TextBox10.Text);
        insertuser.Parameters.AddWithValue("@plot_no", TextBox11.Text);
        insertuser.Parameters.AddWithValue("@address", TextBox12.Text);
        insertuser.Parameters.AddWithValue("@land_paper", TextBox13.Text);
        insertuser.Parameters.AddWithValue("@pan_card", TextBox14.Text);
        insertuser.Parameters.AddWithValue("@contact", TextBox15.Text);
        insertuser.Parameters.AddWithValue("@email_id", TextBox16.Text);
      

        insertuser.Parameters.AddWithValue("@username", Session["email"].ToString());
        insertuser.Parameters.AddWithValue("@date", DateTime.Now);

        try
        {
            insertuser.ExecuteNonQuery();
            con.Close();

            // Response.Redirect("s.aspx");
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Data Updated Successfully');"), true);
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

    
