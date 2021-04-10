<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentRegistration.aspx.cs" Inherits="StudentRegistration" %>

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
            background-image:url('Image/login.jpg');
            background-size:cover;
            position:absolute;
        }
        .registration-box
        {
            width:380px;
            height:auto;
            position:relative;
            margin:2% auto;
            background: rgba(0,0,0,0.5);
            padding:10px;
            overflow: hidden;
            box-shadow:10px 10px 20px;
        }
        .user
        {
           width: 100px;
           height: 100px;
           overflow: hidden;
           top: -29px;
           left: 145px;
           position: absolute;
        }
        h3
        {
        padding: 0;
        margin-bottom:10px;
        text-align: center;
        margin-top:70px;
        color: rgb(255, 217, 9);
        font-family: Arial, Helvetica, sans-serif;
        }
        .inputbox
        {
            width:74%;
            padding:12px 0;
            margin-left:12%;
            outline:none;
            font-size:14px;
            color:#fff;
            background:transparent;
            border:none;
            border-bottom:3px solid #fff;
        }
        .submit-btn
        {
            width:40%;
            padding: 10px 30px;
            cursor:pointer;
            display:block;
            margin:auto;
            margin-top:15px;
            margin-bottom:12px;
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
        .msg
        {
            margin-left:10%;
            margin-bottom:15px;
            font-weight:bold;
            text-alignment:center;
        }
        .lblmsg
        {
            margin:18%;
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
        .style5
        {
            text-align: center;
            width: 292px;
            height: 11px;
        }
        .style6
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
                                <td bgcolor="#99CCFF" class="style5">
                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/StudentLogin.aspx">Student Login</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style6">
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
    <div class="registration-box">
    <img src="Image/user.png" alt="Alternate Text" class="user"/>
    <h3 style="font-family: Arial, Helvetica, sans-serif">Register Yourself</h3>
    <asp:TextBox ID="TextBox1" runat="server" placeholder="User Name" class="inputbox"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Branch" class="inputbox"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" placeholder="Year" class="inputbox"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" placeholder="Roll No." class="inputbox"></asp:TextBox>
    <asp:TextBox ID="TextBox5" runat="server" placeholder="Email ID" class="inputbox"></asp:TextBox>
    <asp:TextBox ID="TextBox6" runat="server" placeholder="Contact No." class="inputbox"></asp:TextBox>
    <asp:TextBox ID="TextBox7" runat="server" placeholder="Set Password" class="inputbox"></asp:TextBox>
    <asp:TextBox ID="TextBox8" runat="server" placeholder="Confirm Password" class="inputbox"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Sign Up" Class="submit-btn" 
        onclick="Button1_Click"/>
    <asp:Label ID="Label1" runat="server" Text="Already Have An Account?" ForeColor="White" class="msg"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#000099" 
        Font-Bold="True" NavigateUrl="~/StudentLogin.aspx">Sign In Here</asp:HyperLink>
        <br />
        <br />
    <asp:Label ID="Label2" runat="server" class="lblmsg" Font-Bold="True" 
            ForeColor="Red"></asp:Label>
    </form>
    </div>
    
</body>
</html>
