using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class RegisterComplaint : System.Web.UI.Page
{
    static int complaintid;

    protected void Page_Load(object sender, EventArgs e)
    {
        getcomplaintid();
        Label3.Text = DateTime.Now.ToLongDateString().ToString() + " " + DateTime.Now.ToLongTimeString().ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String query = "insert into ComplaintDetail(complaintid,registerdatetime,name,branch,year,roll,complainttype,complaintdetail,status) values(" + complaintid + ", '" + Label3.Text + "', '" + TextBox1.Text + "', '" + DropDownList1.Text + "', '" + DropDownList2.Text + "', '" + TextBox2.Text + "', '" + DropDownList3.Text + "', '" + TextBox3.Text + "', 'Under Processing')";
        String mycon = "Data Source=LAPTOP-8CCI2EPQ\\SQLEXPRESS; Initial Catalog=GrievanceSystem; Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        DropDownList1.Text = "";
        DropDownList2.Text = "";
        DropDownList3.Text = "";
        Label4.Text = "Your Complaint ID is " + complaintid + ". You Can Check The Status Of Complaint Using This Complaint ID.";
        
    }

    

    public void getcomplaintid()
    {
        String mycon = "Data Source=LAPTOP-8CCI2EPQ\\SQLEXPRESS; Initial Catalog=GrievanceSystem; Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select complaintid from ComplaintDetail";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();

        if (ds.Tables[0].Rows.Count < 1)
        {
            complaintid = 001;
        }
        else
        {
            String mycon1 = "Data Source=LAPTOP-8CCI2EPQ\\SQLEXPRESS; Initial Catalog=GrievanceSystem; Integrated Security=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(complaintid) from ComplaintDetail";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            int a;
            a = Convert.ToInt16(ds1.Tables[0].Rows[0][0].ToString());
            a = a + 1;
            complaintid = a;
            scon1.Close();
        }
    }
}