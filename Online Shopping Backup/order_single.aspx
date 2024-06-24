<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="order_single.aspx.cs" Inherits="Online_Shopping_Backup.order_single" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" GridLines="Vertical" Height="312px" Width="736px" BorderStyle="None" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:TemplateField HeaderText="Book Image">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Brand_image") %>' Height="250px" Width="200px" />
                    &nbsp;
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Product_name" HeaderText="Book name" SortExpression="Product_name" />
            <asp:BoundField DataField="Our_Prize" HeaderText="Total" SortExpression="Our_Prize" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [Product_name], [Brand_image], [Our_Prize] FROM [main_product] WHERE ([P_ID] = @P_ID) AND [Type_of_product] in ( 'Fiction','Non-Fiction')">
        <SelectParameters>
            <asp:QueryStringParameter Name="P_ID" QueryStringField="product_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <h2>Select Shipping Address And Payment option</h2>
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-4">
            <div class="form-group">
                <label>Name </label>
                <asp:TextBox CssClass="form-control" ID="txt_username" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Email Address </label>
                <asp:TextBox CssClass="form-control" ID="txt_email" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Mobile no </label>
                <asp:TextBox CssClass="form-control" ID="txt_mobile_no" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Address </label>
                <asp:TextBox CssClass="form-control" ID="txt_Address" runat="server" TextMode="MultiLine" Rows="8" Columns="35"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Quantity </label>
                <asp:TextBox CssClass="form-control" ID="txt_quantity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter amount of quantity to purchase" ControlToValidate="txt_quantity"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label>Payment Option </label>
                <asp:DropDownList ID="ddl_payment_option" runat="server">
                    <asp:ListItem Value="Cash">Cash on delivery</asp:ListItem>
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Book" OnClick="Button1_Click" />
        </div>
        <div class="col-lg-6"></div>
    </div>

</asp:Content>
