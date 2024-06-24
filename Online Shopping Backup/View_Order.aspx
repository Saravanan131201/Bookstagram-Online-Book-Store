<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="View_Order.aspx.cs" Inherits="Online_Shopping_Backup.View_Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="order_id" DataSourceID="SqlDataSource1" Height="809px" Width="951px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="Order Id" InsertVisible="False" ReadOnly="True" SortExpression="order_id" />
            <asp:BoundField DataField="user_id" HeaderText="User Id" SortExpression="user_id" />
            <asp:BoundField DataField="user_name" HeaderText="Username" SortExpression="user_name" />
            <asp:BoundField DataField="product_id" HeaderText="Product Id" SortExpression="product_id" />
             <asp:BoundField DataField="Product_name" HeaderText="Product Name" SortExpression="product_id" />
             <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
            <asp:BoundField DataField="total" HeaderText="Total Amount"   SortExpression="total"  />
            <asp:BoundField DataField="email_address" HeaderText="Email address" SortExpression="email_address" />
            <asp:BoundField DataField="mobile_no" HeaderText="Mobile No" SortExpression="mobile_no" />
            <asp:BoundField DataField="payment_type" HeaderText="Payment Method" SortExpression="payment_type" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT * FROM [main_order]"></asp:SqlDataSource>

    <br />
    <br />
    <br />

    <p align ="center"><asp:Button CssClass="btn btn-primary" ID="btn_back_to_admin" runat="server" Text="Back to Admin Console" OnClick="btn_back_to_admin_Click" /> </p>

    <br />
    <br />
    <br />
</asp:Content>
