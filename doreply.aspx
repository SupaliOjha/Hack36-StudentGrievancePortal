<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doreply.aspx.cs" Inherits="doreply" %>

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
            background-image:url('Image/pexels-photo-261681.jpeg');
            background-size:cover;
            position:absolute;
        }
        .style5
        {
            width: 51%;
            height: 282px;
        }
        .style8
        {
            width: 305px;
            height: 40px;
            text-align: center;
        }
        .style9
        {
            height: 40px;
        }
        .style10
        {
            width: 100%;
            height: 0px;
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
        .style13
        {
            text-align: center;
            width: 292px;
            height: 11px;
        }
        .style14
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
        <table class="style10">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/PicsArt_01-27-11.56.00 (2).jpg" 
                        Height="40px" Width="1530px" />
              
                        <table class="style10">
                            <tr>
                                <td bgcolor="#99CCFF" class="style14">
                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style11">
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/AdminLogin.aspx">Admin Login</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style12">
                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/StudentLogin.aspx">Student Login</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style13">
                                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/StudentRegistration.aspx">New Registration</asp:LinkButton>
                                </td>
                                <td bgcolor="#99CCFF" class="style14">
                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Underline="False" 
                                        PostBackUrl="~/CheckStatus.aspx">Check Status</asp:LinkButton>
                                </td>
                            </tr>
              </table>
              </table>
            
    
    <p style="text-align: center">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Names="Lucida Handwriting" Font-Size="XX-Large" ForeColor="#000099" 
            Text="JISCE Grievance Portal"></asp:Label>
    </p>
    <table align="center" class="style5" border="1" 
        style="border: thick double #800000;">
        <tr>
            <td class="style8">
                Complaint ID</td>
            <td class="style9">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Registered Date &amp; Time</td>
            <td class="style9">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Name</td>
            <td class="style9">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Branch</td>
            <td class="style9">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Year</td>
            <td class="style9">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Roll</td>
            <td class="style9">
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Complaint Type</td>
            <td class="style9">
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Complaint Details</td>
            <td class="style9">
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Status</td>
            <td class="style9">
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Reply</td>
            <td class="style9">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="486px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p style="text-align: center">
        <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="White" 
            BorderStyle="Double" Font-Bold="True" ForeColor="White" Height="32px" 
            Text="Submit" Width="85px" onclick="Button1_Click" />
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Maroon"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
            ForeColor="#000066" NavigateUrl="~/ViewComplaints.aspx">View All Complaints</asp:HyperLink>
    </p>
    </div>
    </form>
    </body>
</html>
