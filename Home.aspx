<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

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
            background-image:url('Image/jis.jpg');
            background-size:cover;
            position:absolute;
            background-repeat:no-repeat;
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
        .style8
        {
            text-align: center;
            width: 292px;
            height: 11px;
        }
        .lbl1
        {
            font-size: 30px;
        }
        .lbl2
        {
            font-size: 35px;
        }
        .lbl
        {
            font-size: 50px;
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
                                <td bgcolor="#99CCFF" class="style8">
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
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" 
            Font-Names="Lucida Handwriting" Text="Welcome To" 
            ForeColor="White" class="lbl1"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Names="Lucida Handwriting" Color="linear-gradient(to right, navy, aqua);" 
            Text="JIS College Of Engineering" ForeColor="Red" class="lbl2"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" 
            Font-Names="Lucida Handwriting"  
            Text="Grievance Portal" ForeColor="White" class="lbl"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" 
            Font-Names="Lucida Bright" Font-Size="Large" Font-Underline="False" 
            ForeColor="Yellow" PostBackUrl="~/StudentLogin.aspx">Click Here To Register Your Complaint</asp:LinkButton>
    </p>
    </form>
</body>
</html>
