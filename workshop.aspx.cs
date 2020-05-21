
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

public partial class complain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
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
        string inscmd = "insert into reg(farmer_name, dob, uid_no, contact,gender,catogary,email,address,date) values(@farmer_name, @dob, @uid_no, @contact,@gender,@catogary,@email,@address,@date)";
        SqlCommand insertuser = new SqlCommand(inscmd, con);
        insertuser.Parameters.AddWithValue("@farmer_name", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@dob", TextBox2.Text);
        insertuser.Parameters.AddWithValue("@contact", TextBox3.Text);
        insertuser.Parameters.AddWithValue("@uid_no", TextBox4.Text);

        insertuser.Parameters.AddWithValue("@gender", gender);
        insertuser.Parameters.AddWithValue("@catogary", DropDownList1.SelectedValue.ToString());
        insertuser.Parameters.AddWithValue("@email", TextBox5.Text);
      //  insertuser.Parameters.AddWithValue("@apl_bpl", TextBox8.Text);
        insertuser.Parameters.AddWithValue("@address", TextBox6.Text);
    
        insertuser.Parameters.AddWithValue("@Date", DateTime.Now);
        try
        {

            insertuser.ExecuteNonQuery();
            con.Close();
            SendingMail(TextBox5.Text, "sammd92@gmail.com", "morgan01", " you are registered", "Test");
            Response.Redirect("s.aspx");


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
    public string SendingMail(string mailTo, string from, string pass, string subject, string body)
    {
        string msg = string.Empty;
        if (mailTo != "")
        {

            MailMessage message = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();

            try
            {
                MailAddress fromAddress = new MailAddress(from);
                message.From = fromAddress;
                message.To.Add(mailTo);

                message.Subject = subject;
                message.IsBodyHtml = true;
                message.Body = body;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential(from, pass);
                smtpClient.Send(message);
                msg = "true";

            }
            catch (Exception ex)
            {
                throw ex;
                // msg = ex.Message;
            }
        }
        return msg;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}


