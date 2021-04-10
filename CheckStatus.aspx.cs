using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CheckStatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            String mycon = "Data Source=LAPTOP-8CCI2EPQ\\SQLEXPRESS; Initial Catalog=GrievanceSystem; Integrated Security=True";
            String myquery = "Select * from complaintdetail where complaintid=" + TextBox1.Text;
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label3.Text = "Particular Complaint ID Found.";
                Label4.Text = "Your Registered Complaint ID Is : " + ds.Tables[0].Rows[0]["complaintid"].ToString();
                Label5.Text = "Status Of Your Registered Complaint : " + ds.Tables[0].Rows[0]["status"].ToString();
                if (ds.Tables[0].Rows[0]["status"].ToString() == "Under Processing")
                {
                    Panel1.Visible = false;
                }
                else
                {
                    Panel1.Visible = true;
                    Label6.Text = "Admin Reply : " + ds.Tables[0].Rows[0]["replymsg"].ToString();
                }
            }
            else
            {
                Label3.Text = "Particular Complaint ID Not Found.";
                Label4.Text = "";
                Label5.Text = "";
                Panel1.Visible = false;
            }
            con.Close();
        }
    }
}