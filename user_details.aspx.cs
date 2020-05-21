using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class user_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pro"].ConnectionString);
    DataTable dt = new DataTable();

    string str;

    SqlCommand com;

    SqlCommand cmd = null;

    SqlTransaction trn = null;

    SqlDataAdapter adp = null;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            BindData();


        }
    }
    public void BindData()
    {
        using (SqlCommand cmd = new SqlCommand())
        {
            cmd.CommandText = "select * from reg";
            cmd.Connection = con;
            con.Open();
            gvDetails.DataSource = cmd.ExecuteReader();
            gvDetails.DataBind();
            con.Close();
        }

    }
}