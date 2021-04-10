using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class doreply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["complaintid"] != null)
        {
            int complaintid = Convert.ToInt16(Request.QueryString["complaintid"].ToString());
            String mycon = "Data Source=LAPTOP-8CCI2EPQ\\SQLEXPRESS; Initial Catalog=GrievanceSystem; Integrated Security=True";
            String myquery = "Select * from complaintdetail where complaintid=" + complaintid;
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
                Label2.Text = ds.Tables[0].Rows[0]["complaintid"].ToString();
                Label3.Text = ds.Tables[0].Rows[0]["registerdatetime"].ToString();
                Label4.Text = ds.Tables[0].Rows[0]["name"].ToString();
                Label5.Text = ds.Tables[0].Rows[0]["branch"].ToString();
                Label6.Text = ds.Tables[0].Rows[0]["year"].ToString();
                Label7.Text = ds.Tables[0].Rows[0]["complainttype"].ToString();
                Label8.Text = ds.Tables[0].Rows[0]["complaintdetail"].ToString();
                Label9.Text = ds.Tables[0].Rows[0]["status"].ToString();
                Label10.Text = ds.Tables[0].Rows[0]["roll"].ToString();
            }
            else
            {
                Response.Redirect("ViewComplaints.aspx");
            }
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String mycon = "Data Source=LAPTOP-8CCI2EPQ\\SQLEXPRESS; Initial Catalog=GrievanceSystem; Integrated Security=True";
        String updatedata = "Update ComplaintDetail set status='Processed'" + ", replymsg='" + TextBox1.Text + "' where complaintid=" + Label2.Text;
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label11.Text = "Reply Has Been Processed Properly.";
    }
}