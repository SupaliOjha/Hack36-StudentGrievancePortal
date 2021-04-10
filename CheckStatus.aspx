<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckStatus.aspx.cs" Inherits="CheckStatus" %>

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
            background-image:url('Image/feedback.jpg');
            background-size:cover;
            position:absolute;
        }
        .style1
        {
            width: 31%;
            height: 30px;
        }
        .style2
        {
            text-align: center;
            width: 199px;
            height: 35px;
        }
        .style3
        {
            height: 35px;
            width: 244px;
        }
        .style4
        {
            width: 32%;
            border-collapse: collapse;
            border: 1px solid #800000;
        }
        .style7
        {
            height: 50px;
        }
        .style8
        {
            width: 100%;
            height: 0px;
        }
        .style9
        {
            text-align: center;
            width: 292px;
            height: 11px;
        }
        .style10
        {
            text-align: center;
            width: 292px;
            height: 11px;
        }
        .style11
        {
            text-align: center;
            width: 292px;
            height: 11px;
        }
        .style12
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
    <table class="style8">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/PicsArt_01-27-11.56.00 (2).jpg" 
                        Height="40px" Width="1530px" />
              
                        <table class="style8">
                            <tr>
                                <td bgcolor="#99CCFF" class="style12">
                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style9">
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/AdminLogin.aspx">Admin Login</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style10">
                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/StudentLogin.aspx">Student Login</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style11">
                                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/StudentRegistration.aspx">New Registration</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style12">
                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/CheckStatus.aspx">Check Status</asp:LinkButton>
                                </td>
                            </tr>
              </table>
              </table>

<div>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Names="Lucida Handwriting" Font-Size="XX-Large" ForeColor="#000099" 
            Text="JISCE Grievance Portal"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="Red" Text="Check The Status Using Your Complaint ID"></asp:Label>
    </p>
    <p style="text-align: center">
        &nbsp;</p>
    <table align="center" class="style1" border="1">
        <tr>
            <td class="style2">
                Your Complaint ID</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="263px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p style="text-align: center">
        <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="White" 
            BorderStyle="Solid" Font-Bold="False" Font-Size="Medium" ForeColor="White" 
            Height="35px" onclick="Button1_Click" Text="Check Status" Width="116px" />
    </p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="Large" ForeColor="#000099"></asp:Label>
    </p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <table align="center" class="style4" 
        style="border: medium none #800000; height: 190px;">
        <tr>
            <td class="style7" 
                style="border-style: none; border-color: #800000; font-size: medium;">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7" 
                style="border-style: none; border-color: #800000; font-size: medium;">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7" 
                style="border-style: none; border-color: #800000; font-size: medium;">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Red"></asp:Label>
                </asp:Panel>
            </td>
        </tr>
    </table>
    </div>
    </div>
    </form>
</body>
</html>
