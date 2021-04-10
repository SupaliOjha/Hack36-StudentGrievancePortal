using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class StudentLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        String mycon = "Data Source=LAPTOP-8CCI2EPQ\\SQLEXPRESS; Initial Catalog=GrievanceSystem; Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select email,password from StudentLogin";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String email;
        String password;
        email = ds.Tables[0].Rows[0]["email"].ToString();
        password = ds.Tables[0].Rows[0]["password"].ToString();
        scon.Close();
        if (email == EmailText.Text && password == PassText.Text)
        {

            Response.Redirect("RegisterComplaint.aspx");
        }
        else
        {
            Label2.Text = "Invalid Username Or Password";
        }

    }
}
