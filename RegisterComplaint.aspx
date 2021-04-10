<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterComplaint.aspx.cs" Inherits="RegisterComplaint" %>

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
            background-image:url('Image/comp.jpg');
            background-size:cover;
            position:absolute;
        }
        .style1
        {
            width: 52%;
            border: 1px solid #800000;
        }
        .style10
        {
            text-align: center;
            width: 462px;
            height: 80px;
        }
        .style11
        {
            text-align: center;
            width: 324px;
            height: 80px;
        }
        .style15
        {
            text-align: center;
            width: 324px;
            color: #FFFFFF;
            height: 42px;
        }
        .style16
        {
            text-align: left;
            width: 462px;
            height: 42px;
        }
        .style17
        {
            text-align: center;
            width: 324px;
            height: 42px;
        }
        .style2
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
        <table class="style2">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/PicsArt_01-27-11.56.00 (2).jpg" 
                        Height="40px" Width="1530px" />
              
                        <table class="style2">
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
    <p style="text-align: center">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Names="Lucida Handwriting" Font-Size="XX-Large" ForeColor="#000099" 
            Text="JISCE Grievance Portal"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label2" runat="server" Font-Bold="False" 
            Font-Names="Berlin Sans FB" Font-Size="Large" ForeColor="Red" 
            Text="Register Your Complaint Here"></asp:Label>
    </p>
    <table align="center" border="1" class="style1" 
        style="border-width: thick; border-style: double; height: 353px; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td class="style15" 
                
                style="color: #000000; font-weight: normal; font-family: Arial, Helvetica, sans-serif;" 
                bgcolor="White">
                Complaint Registering On</td>
            <td class="style16" style="color: #000000; background-color: #FFFFFF;">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style15" 
                
                style="color: #000000; font-weight: normal; font-family: Arial, Helvetica, sans-serif;" 
                bgcolor="White">
                Name</td>
            <td class="style16" style="color: #FFFFFF">
                <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="490px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17" 
                
                style="color: #000000; font-weight: normal; font-family: Arial, Helvetica, sans-serif;" 
                bgcolor="White">
                Branch</td>
            <td class="style16" style="color: #FFFFFF">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="42px" Width="494px" AutoPostBack="true" AppendDataBoundItems="true">
                    <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>BME</asp:ListItem>
                    <asp:ListItem>CE</asp:ListItem>
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>ECE</asp:ListItem>
                    <asp:ListItem>EE</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style17" 
                
                style="color: #000000; font-weight: normal; font-family: Arial, Helvetica, sans-serif;" 
                bgcolor="White">
                Year</td>
            <td class="style16" style="color: #FFFFFF">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="42px" Width="494px" AutoPostBack="true" AppendDataBoundItems="true">
                    <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                    <asp:ListItem>1st</asp:ListItem>
                    <asp:ListItem>2nd</asp:ListItem>
                    <asp:ListItem>3rd</asp:ListItem>
                    <asp:ListItem>4th</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style17" 
                
                style="color: #000000; font-weight: normal; font-family: Arial, Helvetica, sans-serif;" 
                bgcolor="White">
                Roll No.</td>
            <td class="style16" style="color: #FFFFFF">
                <asp:TextBox ID="TextBox2" runat="server" Height="39px" Width="490px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17" 
                
                style="color: #000000; font-weight: normal; font-family: Arial, Helvetica, sans-serif;" 
                bgcolor="White">
                Type Of Complaint</td>
            <td class="style16" style="color: #FFFFFF">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="42px" Width="494px" AutoPostBack="true" AppendDataBoundItems="true">
                    <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                    <asp:ListItem>Academic Misconduct</asp:ListItem>
                    <asp:ListItem>Attendance Issues</asp:ListItem>
                    <asp:ListItem>Book-Bank Related</asp:ListItem>
                    <asp:ListItem>Discrimination or Harassment</asp:ListItem>
                    <asp:ListItem>Faculty/Curriculum</asp:ListItem>
                    <asp:ListItem>Hostel Related</asp:ListItem>
                    <asp:ListItem>Scholarship Issues</asp:ListItem>
                    <asp:ListItem>Training and Internship</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style11" 
                
                style="color: #000000; font-weight: normal; font-family: Arial, Helvetica, sans-serif;" 
                bgcolor="White">
                Complaint Details</td>
            <td class="style10" style="color: #FFFFFF">
                <asp:TextBox ID="TextBox3" runat="server" Height="80px" TextMode="MultiLine" 
                    Width="490px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p style="text-align: center">
        <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="White" 
            BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="Medium" 
            ForeColor="White" Height="45px" onclick="Button1_Click" 
            Text="Register Complaint" Width="187px" />
    </p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        <asp:Label ID="Label4" runat="server" ForeColor="White" Font-Bold="True"></asp:Label>
    </p>
    </form>
</body>
</html>
