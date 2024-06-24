<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="add_cart.aspx.cs" Inherits="Online_Shopping_Backup.add_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-2">
        </div>
        <div class="col-lg-10" style="margin-top: 50px">
            <h1>Cart Detail</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="o_id" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:TemplateField HeaderText="Book Image">
                        <ItemTemplate>
                            <asp:ImageButton ID="image" runat="server" ImageUrl='<%# Eval("image") %>' Height="250px" Width="200px" />
                            <br />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Book Name">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="brand" HeaderText="SubCategory" SortExpression="brand" />
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:DropDownList ID="ddlQuantity" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlQuantity_SelectedIndexChanged">
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            <asp:HiddenField ID="hfPrice" runat="server" Value='<%# Eval("price") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                            <asp:Label ID="lblTotal" runat="server" Text='<%# Eval("total") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" DeleteCommand="DELETE FROM [cart_product] WHERE [o_id] = @o_id" InsertCommand="INSERT INTO [cart_product] ([user_id], [product_id], [Product_name], [brand], [image], [quantity], [price], [total]) VALUES (@user_id, @product_id, @Product_name, @brand, @image, @quantity, @price, @total)" SelectCommand="SELECT *, (quantity * price) AS Total FROM [cart_product] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [cart_product] SET [user_id] = @user_id, [product_id] = @product_id, [Product_name] = @Product_name, [brand] = @brand, [image] = @image, [quantity] = @quantity, [price] = @price, [total] = @total WHERE [o_id] = @o_id">
                <DeleteParameters>
                    <asp:Parameter Name="o_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="user_id" Type="Int32" />
                    <asp:Parameter Name="product_id" Type="Int32" />
                    <asp:Parameter Name="Product_name" Type="String" />
                    <asp:Parameter Name="brand" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="quantity" Type="Int32" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="total" Type="Decimal" />
                </InsertParameters>
                <SelectParameters>
                    <asp:CookieParameter CookieName="u_id" Name="user_id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_id" Type="Int32" />
                    <asp:Parameter Name="product_id" Type="Int32" />
                    <asp:Parameter Name="Product_name" Type="String" />
                    <asp:Parameter Name="brand" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="quantity" Type="Int32" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="total" Type="Decimal" />
                    <asp:Parameter Name="o_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:ImageButton ID="btn_place_order" runat="server" ImageUrl="~/Image_new/place_order.png" OnClick="btn_place_order_Click" />
            <br />
            <br />
        </div>
    </div>
</asp:Content>
