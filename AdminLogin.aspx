<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" MasterPageFile="" %>

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
            background-image:url('Image/admin.jpg');
            background-size:cover;
            position:absolute;
        }
        .login-box
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
        .avatar
        {
           overflow: hidden;
           top:-30%;
           margin-left: 200px;
           position: absolute;
        }
        h3
        {
        padding: 0;
        margin-bottom:30px;
        text-align: center;
        margin-top:50px;
        color: rgb(255, 217, 9);
        font-family: Arial, Helvetica, sans-serif;
        }
        .inputbox
        {
            width:74%;
            padding:15px 0;
            margin-left:12%;
            margin-bottom:10px;
            outline:none;
            font-size:14px;
            color:#fff;
            background:transparent;
            border:none;
            border-bottom:3px solid #fff;
        }
        .showpw
        {
            color:#fff;
            margin-left: 50%;
            }
        .submit-btn
        {
            width:40%;
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
        .forgotpw
        {
            color:red;
            font-weight:bold;
            margin-left: 30%;
        }
        .forgotpw:hover
        {
            text-decoration:underline;
        }
        .user
        {
            height: 100px;
            width: 100px;
            margin-left: 127px;
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

    <div class="login-box">
    <img src="Image/avatar.png" alt="Alternate Text" class="user"/>
    <h3 style="font-family: Arial, Helvetica, sans-serif">Login To Your Account</h3>
    
    <asp:TextBox ID="EmailText" runat="server" placeholder="Enter Username" 
        class="inputbox"></asp:TextBox>
    <asp:TextBox ID="PassText" runat="server" placeholder="Enter Password" 
        class="inputbox"></asp:TextBox>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Show Password" class="showpw"/>
    <asp:Button ID="Button1" runat="server" Text="Sign In" class=submit-btn 
        onclick="Button1_Click"/>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" class="forgotpw" 
            NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
    <br />
    <br />
      </div>
    </div>
    </form>
</body>
</html>

