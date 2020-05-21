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


public partial class Loan_apply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string giram = Guid.NewGuid().ToString();

        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.SaveAs(Server.MapPath("Land_record/" + giram + filename));
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
        string inscmd = "insert into loan_apply(farmer_name, gender,filename,filepath,contact,state,district,village,pin_code,address,adhar_no,state1,bank_name,district1,ifsc_code,loan_amount,loan_type,last_loan_taken,previous_dues,account_no,date,username) values(@farmer_name, @gender,@filename,@filepath,@contact,@state,@district,@village,@pin_code,@address,@adhar_no,@state1,@bank_name,@district1,@ifsc_code,@loan_amount,@loan_type,@last_loan_taken,@previous_dues,@account_no,@username,@date)";
        SqlCommand insertuser = new SqlCommand(inscmd, con);
        insertuser.Parameters.AddWithValue("@farmer_name", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@gender", gender);
        insertuser.Parameters.AddWithValue("@contact", TextBox3.Text);
        insertuser.Parameters.AddWithValue("@state", DropDownList1.SelectedValue.ToString());
        //  insertuser.Parameters.AddWithValue("@district", gender);
        insertuser.Parameters.AddWithValue("@district", DropDownList2.Text);
        // insertuser.Parameters.AddWithValue("@district", TextBox7.Text);
        insertuser.Parameters.AddWithValue("@village", TextBox6.Text);
        insertuser.Parameters.AddWithValue("@pin_code", TextBox7.Text);
        insertuser.Parameters.AddWithValue("@address", TextBox8.Text);
        insertuser.Parameters.AddWithValue("@adhar_no", TextBox9.Text);
        insertuser.Parameters.AddWithValue("@state1", DropDownList3.SelectedValue.ToString());
        insertuser.Parameters.AddWithValue("@bank_name", DropDownList6.SelectedValue.ToString());
        insertuser.Parameters.AddWithValue("@district1", DropDownList4.SelectedValue.ToString());
        insertuser.Parameters.AddWithValue("@ifsc_code", TextBox2.Text);
        insertuser.Parameters.AddWithValue("@loan_amount", TextBox13.Text);

        insertuser.Parameters.AddWithValue("@loan_type", DropDownList5.SelectedValue.ToString());
        insertuser.Parameters.AddWithValue("@last_loan_taken", DropDownList8.SelectedValue.ToString());
        insertuser.Parameters.AddWithValue("@previous_dues", DropDownList7.SelectedValue.ToString());
        insertuser.Parameters.AddWithValue("@account_no", TextBox15.Text);
        insertuser.Parameters.AddWithValue("@filename", giram + filename);
        insertuser.Parameters.AddWithValue("@filepath", "Land_record" + filename);
        insertuser.Parameters.AddWithValue("@username", Session["email"].ToString());
        insertuser.Parameters.AddWithValue("@Date", DateTime.Now);
        try
        {

            insertuser.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Data Saved Successfully');"), true);
            //  SendingMail(TextBox7.Text, "sammd92@gmail.com", "morgan01", " you are registered", "Test");
           // Response.Redirect("login.aspx");


        }
        catch (Exception er)
        {
            throw er;
            Response.Write("something going wrong");
        }
        finally
        {

        }


    }
}