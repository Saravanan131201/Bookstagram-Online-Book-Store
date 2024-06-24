<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Thank_you.aspx.cs" Inherits="Online_Shopping_Backup.Pages.Thank_you" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" type="text/css" href="../CSS/css_container.css" />
    <div class="container">

        <style>

            .ty{
                color: #ff9800;
 
           text-decoration:solid;

               font-size:18px;
            }
            
        .dis
        {
            color : lawngreen;
        }


        </style>


        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-8">
                <h1 style="padding-bottom:20px">Thank you!!! Your order has been placed Sucessfully</h1>
                
                <br />
                <br />
                <a class="ty" href ="/Pages/Home.aspx">Back to Home</a>

                <br />
                <br />

                <h2 style="padding-bottom:0px">Best Seller!!!</h2>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="284px" RepeatColumns="4" RepeatDirection="Horizontal" Width="902px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <ItemStyle ForeColor="#000066" />
                    <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Brand_image") %>' PostBackUrl='<%#"Mobile_description.aspx?P_ID="+Eval("P_ID")%>' Height="250px" Width="200px" />
                    <br />

                    <div id="product_name">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
                    </div>
                    <div id="price">
                        <b>MRP:</b>
                        <del>
                          <asp:Label ID="MRPLabel" runat="server" Text='<%# Eval("MRP") %>' />
                            
                        </del>
                        &nbsp;  &nbsp;
                  <span class ="dis">(</span> <asp:Label ID="discount" runat="server" Text='<%# Eval("Discount") %>' ForeColor="lawngreen"></asp:Label> <span class ="dis">%Off )</span>
                      <br />
                       <b>₹</b>  <asp:Label ID="Our_PrizeLabel" runat="server" Text= '<%# Eval("Our_Prize") %>' />
                        <br />
                    </div>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                </asp:DataList>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [Brand_image], [P_ID], [Our_Prize], [MRP], [Discount], [Product_name] FROM [main_product] WHERE ([best_offer] = @best_offer) ORDER BY [Our_Prize] DESC">
                    <SelectParameters>
                         <asp:Parameter DefaultValue="10" Name="best_offer" Type="Int32"  />
                         
                    </SelectParameters>
                </asp:SqlDataSource>


                <br />
                <br />

            </div>
            <div class="col-lg-2">
            </div>
        </div>
    </div>
     
</asp:Content>
