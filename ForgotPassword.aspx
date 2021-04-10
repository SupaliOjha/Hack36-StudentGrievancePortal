<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
    body 
        {
            margin:0;
            padding:0;
            font-family:Sans-Serif;
            height:100%;
            width:100%;
            background-image:url('Image/forgot.jpg');
            background-size:cover;
            position:absolute;
        }
        .forgotpw-box
        {
            width:350px;
            height:auto;
            position:relative;
            margin:5% auto;
            background: rgba(0,0,0,0.5);
            padding:8px;
            overflow: hidden;
            box-shadow:10px 10px 20px;
            border-radius:30px;
        }
        .inputbox
        {
            width:74%;
            padding:15px 0;
            margin-left:12%;
            margin-top:20px;
            margin-bottom:10px;
            outline:none;
            font-size:14px;
            color:#fff;
            background:transparent;
            border:none;
            border-bottom:3px solid #fff;
        }
        .submit-btn
        {
            width:45%;
            padding: 10px 30px;
            cursor:pointer;
            display:block;
            margin:auto;
            margin-top:30px;
            margin-bottom:20px;
            background:linear-gradient(to right, navy, aqua);
            border:0;
            outline:none;
            border-radius:30px;
            box-shadow:0 0 3px 2px ButtonShadow;
            color:#fff;
            font-size:16px;
        }
        .submit-btn:hover
        {
            background:yellow;
        }
        .login
        {
            color:red;
            font-weight:bold;
            margin-left: 38%;
        }
        .lblmsg
        {
        text-align:center;
        }
        .style1
        {
            width: 100%;
            height: 0px;
        }
        .style4
        {
            text-align: center;
            width: 292px;
            height: 11px;
        }
        .style7
        {
            text-align: center;
            width: 292px;
            height: 11px;
        }
</style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/PicsArt_01-27-11.56.00 (2).jpg" 
                        Height="40px" Width="1530px" />
              
                        <table class="style1">
                            <tr>
                                <td bgcolor="#99CCFF" class="style7">
                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style4">
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/AdminLogin.aspx">Admin Login</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style4">
                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/StudentLogin.aspx">Student Login</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style4">
                                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/StudentRegistration.aspx">New Registration</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style7">
                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/CheckStatus.aspx">Check Status</asp:LinkButton>
                                </td>
                            </tr>
              </table>
              </table>
        
    
      </div>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        <asp:Label ID="Label1" runat="server" Text="JISCE Grievance Portal" 
            Font-Bold="True" Font-Names="Lucida Handwriting" Font-Size="XX-Large" 
            ForeColor="#000066"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="Red" Text="Forgot Password?"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" 
            Text="Get Your Password In Registered Email Account"></asp:Label>
    </p>
        <div class="forgotpw-box">
    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Username" 
        class="inputbox"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Registered Email ID" 
        class="inputbox"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Get Password" class=submit-btn 
                onclick="Button1_Click"/>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" class="login"  
                NavigateUrl="~/StudentLogin.aspx">Login Here</asp:HyperLink>
    
   
    <br />
      </div>
    <div class="lblmsg">
    <asp:Label ID="Label4" runat="server" 
        Font-Bold="True" ForeColor="Red" class="lblmsg" ></asp:Label>
      </div>
      </form>
</body>
</html>
