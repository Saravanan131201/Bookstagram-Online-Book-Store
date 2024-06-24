<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Product_title.aspx.cs" Inherits="Online_Shopping_Backup.Pages.Product_title" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="../CSS/css_container.css" />

    <style>

    .dis
    {
        color : lawngreen;
    }
</style>

    
     <div class="row" style="margin-top:20px">
        <div class="col-lg-2"></div>
        <div class="col-lg-10">


    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="264px" RepeatColumns="4" RepeatDirection="Horizontal" Width="850px">
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
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [Product_name], [MRP], [Our_Prize], [Discount], [Brand_image], [Type_of_product],[P_ID] FROM [main_product] WHERE ([Type_of_product] = @Type_of_product)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Type_of_product" QueryStringField="type_of_product" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

            </div>
         </div>
    
</asp:Content>
