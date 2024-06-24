<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="View_user_Database.aspx.cs" Inherits="Online_Shopping_Backup.View_user_Database" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="SqlDataSource1" CellPadding="3" GridLines="Vertical" Height="290px" Width="764px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>

            <asp:BoundField DataField="id" HeaderText="User ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="Username" ReadOnly="True" SortExpression="name" />
            <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="mobile_no" HeaderText="Mobile No" SortExpression="mobile_no" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView> 
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [name], [id], [role], [address], [mobile_no], [Email] FROM [login_data] ORDER BY [id]"></asp:SqlDataSource>
   
     <br />
 <br />

 <p align ="center"> <asp:Button CssClass="btn btn-primary" ID="btn_back_to_admin" runat="server" Text="Back to Admin Console" OnClick="btn_back_to_admin_Click" /></p>

 <br />
 <br />
 <br />


</asp:Content>
