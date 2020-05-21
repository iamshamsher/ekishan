using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Fertilizer : System.Web.UI.Page
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
        string inscmd = "insert into fertilizer(name,gender,land_paper,khata_no,plot_no,contact,moza,uid_no,address,email_id,username,date)values(@name,@gender,@land_paper,@khata_no,@plot_no,@contact,@moza,@uid_no,@address,@email_id,@username,@date)";
        SqlCommand insertuser = new SqlCommand(inscmd, con);
        insertuser.Parameters.AddWithValue("@name", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@gender", gender);
        insertuser.Parameters.AddWithValue("@land_paper", TextBox3.Text);
        insertuser.Parameters.AddWithValue("@khata_no", TextBox4.Text);
        insertuser.Parameters.AddWithValue("@plot_no", TextBox5.Text);
        insertuser.Parameters.AddWithValue("@contact", TextBox6.Text);
        insertuser.Parameters.AddWithValue("@moza", TextBox7.Text);
        insertuser.Parameters.AddWithValue("@uid_no", TextBox8.Text);
        insertuser.Parameters.AddWithValue("@address", TextBox9.Text);
        insertuser.Parameters.AddWithValue("@email_id", TextBox10.Text);
        insertuser.Parameters.AddWithValue("@username", Session["email"].ToString());
       insertuser.Parameters.AddWithValue("@date",DateTime.Now);
        // insertuser.Parameters.AddWithValue("@address", TextBox12.Text);
        //   insertuser.Parameters.AddWithValue("@land_paper", TextBox13.Text);
        //   insertuser.Parameters.AddWithValue("@pan_card", TextBox14.Text);
        // insertuser.Parameters.AddWithValue("@contact", TextBox15.Text);

        try
        {

            insertuser.ExecuteNonQuery();
            con.Close();
          //  SendingMail(TextBox10.Text, "sammd92@gmail.com", "morgan01", " you are registered", "Test");
           // Response.Redirect("s.aspx");


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
    //public string SendingMail(string mailTo, string from, string pass, string subject, string body)
    //{
    //    string msg = string.Empty;
    //    if (mailTo != "")
    //    {

    //        MailMessage message = new MailMessage();
    //        SmtpClient smtpClient = new SmtpClient();

    //        try
    //        {
    //            MailAddress fromAddress = new MailAddress(from);
    //            message.From = fromAddress;
    //            message.To.Add(mailTo);

    //            message.Subject = subject;
    //            message.IsBodyHtml = true;
    //            message.Body = body;
    //            smtpClient.Host = "smtp.gmail.com";
    //            smtpClient.Port = 587;
    //            smtpClient.EnableSsl = true;
    //            smtpClient.UseDefaultCredentials = true;
    //            smtpClient.Credentials = new System.Net.NetworkCredential(from, pass);
    //            smtpClient.Send(message);
    //            msg = "true";

    //        }
    //        catch (Exception ex)
    //        {
    //            throw ex;
    //            // msg = ex.Message;
    //        }
    //    }
    //    return msg;

    //}
  
}
