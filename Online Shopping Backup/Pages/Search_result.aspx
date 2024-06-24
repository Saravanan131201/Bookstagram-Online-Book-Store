<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Search_result.aspx.cs" Inherits="Online_Shopping_Backup.Pages.Search_result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" type="text/css" href="../CSS/css_container.css" />

    <style>

    .dis
    {
        color : lawngreen;
    }
</style>

    <div class="container">

        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-8">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="711px" Height="305px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">

                    <AlternatingItemStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />

                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Brand_image") %>' PostBackUrl='<%#"Mobile_description.aspx?P_ID="+Eval("P_ID")%>' Height="250px" Width="200px" />
                        <br />

                        <div id="product_name">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
                        </div>
                    
                   <div id="price">
                      <b>MRP:</b>
                    <del>
               <asp:Label ID="Label2" runat="server" Text='<%# Eval("MRP") %>' />
            
                  </del>
             &nbsp;  &nbsp;
            <span class ="dis">(</span> <asp:Label ID="discount" runat="server" Text='<%# Eval("Discount") %>' ForeColor="lawngreen"></asp:Label> <span class ="dis">% Off) </span>
                   <br />

               <span id="rs">₹</span><asp:Label ID="MRPLabel" CssClass="price" runat="server" Text='<%# Eval("Our_Prize") %>' />
               <br />
                       <span id ="del"> <asp:Label ID="Label3" runat="server" Text="Free Delivery!!!" /></span>
                  <br />


                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [Product_name], [MRP], [Discount], [Brand_image],[P_ID],[Our_Prize] FROM [main_product] WHERE ([Product_name] LIKE '%' + @Product_name + '%')">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Product_name" QueryStringField="Search" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
            <div class="col-lg-2">
            </div>
        </div>
    </div>




</asp:Content>
