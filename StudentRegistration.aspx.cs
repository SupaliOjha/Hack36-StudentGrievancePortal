using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class StudentRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (checkBlankField())
        {
            //block 1
        }
        else
        {
            //block 2
            if (checkPasswordMatch())
            {
                if (registerNewUser())
                {
                    Label2.Text = "Successfully Registered.";
                    Label2.ForeColor = System.Drawing.Color.Red;
                    clearAllFields();
                }
                else
                {
                    Label2.Text = "Error Occurred! Try Again.";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }
            }
            
        }
        
    }

    void clearAllFields()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        Label2.Text = "";

    }


    bool checkPasswordMatch()
    {
        if (TextBox7.Text == TextBox8.Text)
        {
            //block 1
            return true;
        }
        else
        {
            Label2.Text = "Password And Confirm Password Not Matched.";
            //block 2
            return false;
        }
    }

    bool checkBlankField()
    {
        if (TextBox1.Text == "")
        {
            Label2.Text = "Blank Username Is Not Accepted.";
            Label2.ForeColor = System.Drawing.Color.Red;
            return true;
        }
        if (TextBox2.Text == "")
        {
            Label2.Text = "Blank Branch Is Not Accepted.";
            Label2.ForeColor = System.Drawing.Color.Red;
            return true;
        }
        if (TextBox3.Text == "")
        {
            Label2.Text = "Blank Year Is Not Accepted.";
            Label2.ForeColor = System.Drawing.Color.Red;
            return true;
        }
        if (TextBox4.Text == "")
        {
            Label2.Text = "Blank Roll No. Is Not Accepted.";
            Label2.ForeColor = System.Drawing.Color.Red;
            return true;
        }
        if (TextBox5.Text == "")
        {
            Label2.Text = "Blank Email ID Is Not Accepted.";
            Label2.ForeColor = System.Drawing.Color.Red;
            return true;
        }
        if (TextBox6.Text == "")
        {
            Label2.Text = "Blank Contact No. Is Not Accepted.";
            Label2.ForeColor = System.Drawing.Color.Red;
            return true;
        }
        if (TextBox7.Text == "")
        {
            Label2.Text = "Blank Password Is Not Accepted.";
            Label2.ForeColor = System.Drawing.Color.Red;
            return true;
        }
        if (TextBox8.Text == "")
        {
            Label2.Text = "Blank Confirm Password Is Not Accepted.";
            Label2.ForeColor = System.Drawing.Color.Red;
            return true;
        }
        Label2.Text = "";
        return false;
    }

    bool registerNewUser()
    {
            String query = "insert into Registration(name,branch,year,roll,email,contact,password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
            String mycon = "Data Source=LAPTOP-8CCI2EPQ\\SQLEXPRESS; Initial Catalog=GrievanceSystem; Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            return true;
        }
    
}