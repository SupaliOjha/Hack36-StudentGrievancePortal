using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String password;
        String mycon = "Data Source=LAPTOP-8CCI2EPQ\\SQLEXPRESS; Initial Catalog=GrievanceSystem; Integrated Security=True";
        String myquery = "Select * from Registration where name='" + TextBox1.Text + "' and email='" + TextBox2.Text + "'";
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
            //Label4.Text = "Data Found."
            password = ds.Tables[0].Rows[0]["password"].ToString();
            sendpassword(password, TextBox2.Text);
            Label4.Text = "Your Password Has Been Sent To Registered Email Address. Check Your Mailbox.";
        }
        else
        {
            Label4.Text = "Your Username Is Not Valid Or Email Not Registered.";
        }
        con.Close();
    }

    private void sendpassword(String password, String email)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("sd.supali.ojha.dtk@gmail.com", "fxonequsatlffgkk");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Forgot Password (JISCE)";
        msg.Body = "Dear " + TextBox1.Text + ", Your Password Is " + password + "\n\n\nThanks & Regards\nJIS College Of Engineering";
        string toaddress = TextBox2.Text;
        msg.To.Add(toaddress);
        string fromaddress = "JIS College Of Engineering <sd.supali.ojha.dtk@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
        }
        catch
        {
            throw;
        }
    }
}