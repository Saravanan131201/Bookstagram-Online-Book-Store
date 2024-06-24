<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="single_page.aspx.cs" Inherits="Online_Shopping_Backup.Pages.single_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="/CSS/css_container.css" />

  

    <div class="row" style="margin-top:20px">
        <div class="col-lg-2"></div>
        <div class="col-lg-10">


            <asp:DataList ID="DataList1" runat="server" DataKeyField="P_ID" DataSourceID="SqlDataSource1" Height="250px" RepeatColumns="3" RepeatDirection="Horizontal" Width="755px">
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
                   <span class ="dis">(</span> <asp:Label ID="discount" runat="server" Text='<%# Eval("Discount") %>' ForeColor="lawngreen"></asp:Label> <span class ="dis">% Off) </span>
                        <br />

                    <b>₹</b><asp:Label ID="Our_PrizeLabel" runat="server" Text='<%# Eval("Our_Prize") %>' />

                        
                        <br />

                        <span id ="del"> <asp:Label ID="Label3" runat="server" Text="Free Delivery!!!" /></span>
               
                    </div>

                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [Brand_image], [P_ID], [Our_Prize], [MRP], [Discount], [Product_name] FROM [main_product] WHERE (([Type_of_product] = @Type_of_product) AND ([Brand] = @Brand))">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Type_of_product" QueryStringField="type_of_product" Type="String" />
                    <asp:QueryStringParameter Name="Brand" QueryStringField="Brand" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

    </div>




</asp:Content>
