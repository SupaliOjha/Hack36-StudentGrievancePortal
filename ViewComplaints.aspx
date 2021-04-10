<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewComplaints.aspx.cs" Inherits="ViewComplaints" %>

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
            background-image:url('Image/compbw.jpg');
            background-size:cover;
            position:absolute;
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
    <p style="text-align: center">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Names="Lucida Handwriting" Font-Size="XX-Large" ForeColor="White" 
            Text="JISCE Grievance Portal"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="Large" Text="Welcome Admin!" ForeColor="Red"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" 
            Text="All The Registered Complaints Are Here"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" Height="386px" 
            style="text-align: center; margin-left: 132px" Width="1266px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="complaintid" HeaderText="Complaint ID" 
                    SortExpression="complaintid">
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="registerdatetime" HeaderText="Complaint Time" 
                    SortExpression="registerdatetime">
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="branch" HeaderText="Branch" SortExpression="branch">
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year">
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="roll" HeaderText="Roll" SortExpression="roll">
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="complainttype" HeaderText="Complaint Type" 
                    SortExpression="complainttype">
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="complaintdetail" HeaderText="Complaint Details" 
                    SortExpression="complaintdetail">
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Reply">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" BackColor="Red" 
                            CommandArgument='<%#Eval("complaintid")%>' ForeColor="White" Height="34px" 
                            onclick="Button1_Click" style="text-align: center" Text="Reply" Width="60px" />
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:GrievanceSystemConnectionString %>" 
        SelectCommand="SELECT * FROM [ComplaintDetail] ORDER BY [complaintid] DESC"></asp:SqlDataSource>
    </form>
</body>
</html>
