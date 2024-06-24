<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Shopping_Backup.Pages.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--  <link rel="stylesheet" type="text/css" href="../CSS/css_container.css" />
    <link rel="stylesheet" type="text/css" href="../CSS/Main_Style.css" />--%>
    <%-- Javascript file --%>
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.min.js"></script>


    <%--   CSS FILE --%>
    <link rel="stylesheet" type="text/css" href="../CSS/css_container.css" />




    <link rel="stylesheet" href="../CSS/bootstrap.min.css" />
   
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap');
       
        h1 {
    font-family: 'Roboto', sans-serif; /* Use a custom font */
    font-size: 48px; /* Adjust size as needed */
    color: #2c3e50; /* Dark blue color */
    text-align: center; /* Center align the text */
    margin: 20px 0; /* Margin around the h1 */
    letter-spacing: 2px; /* Space between letters */
    text-transform: uppercase; /* Make the text uppercase */
    background: linear-gradient(to right, #ff7e5f, #feb47b); /* Gradient text color */
    -webkit-background-clip: text; /* Clip background to text */
    -webkit-text-fill-color: transparent; /* Fill color to transparent */
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* Subtle shadow effect */
    border-bottom: 2px solid #ff7e5f; /* Border bottom for emphasis */
    padding-bottom: 10px; /* Space below the text */
    position: relative; /* Relative positioning for pseudo-element */
}

        
        #description {
            height: 150px;
            width: 150px;
        }
    </style>




    <section>



        <%--this is deal of the day--%>
        <div class="row">
            <div class="col-lg-12">


                <div id="my" class="carousel slide">


                    <ol class="carousel-indicators">
                        <li data-target="#my" data-slide-to="0"></li>
                        <li data-target="#my" data-slide-to="1"></li>
                        <li data-target="#my" data-slide-to="2"></li>
                        <li data-target="#my" data-slide-to="3"></li>

                    </ol>



                    <div class="carousel-inner">

                        <div class="item active">
                            <img src="../Image_new/1.jpg" class="img-responsive">

                            <div class="carousel-caption">
                                <h3 style="padding-left: 500px"></h3>
                            </div>

                        </div>

                        <div class="item">
                            <img src="../Image_new/2.jpg" class="img-responsive">
                        </div>

                        <div class="item ">
                            <img src="../Image_new/3.jpg" class="img-responsive">
                        </div>

                        <div class="item ">
                            <img src="../Image_new/4.jpg" class="img-responsive">
                        </div>



                    </div>

                    <a class="left carousel-control" href="#my" data-slide="prev">
                        <span class="icon-prev"></span></a>
                    <a class="right carousel-control" href="#my" data-slide="next">
                        <span class="icon-next"></span></a>



                </div>



            </div>

        </div>



        <div class="row">
            <div class="col-lg-2">
            </div>

            <br />
            <br />

            <!---Middle COntents start---->
            <hr />
            <h1>Explore All Fiction Books Here!!!
            </h1>
            <br />
            <br />

            <div class="container center ">
                <div class="row ">
                    <div class="col-lg-4">
                        <img class="img-circle " src="../Image_new/Science.jpg" alt="Science" width="140" height="140" />
                        <br />
                        <br />
                        <asp:HyperLink ID="Hyper_Fiction_Science" Text="Science" runat="server" NavigateUrl="~/Pages/single_page.aspx?type_of_product=Fiction&Brand=Science" Font-Size="25"> </asp:HyperLink>


                        <p align="justify">
                            Science fiction (sometimes shortened to SF or sci-fi) is a genre of speculative fiction, which typically deals with 
                            imaginative and futuristic concepts such as advanced science and technology, space exploration, time travel, parallel 
                            universes, and extraterrestrial life.

                        </p>
                    </div>


                    <div class="col-lg-4">
                        <img class="img-circle " src="../Image_new/Romance.jpeg" alt="Romance" width="140" height="140" />

                        <br />
                        <br />

                        <asp:HyperLink ID="Hyper_Fiction_Romance" runat="server" Text="Romance" NavigateUrl="~/Pages/single_page.aspx?type_of_product=Fiction&Brand=Romance" Font-Size="25"></asp:HyperLink>
                        <p align="justify">
                            Two basic elements comprise every romance novel: a central love story and an emotionally satisfying and optimistic ending.         
                            In a romance, the lovers who risk and struggle for each other and their relationship are rewarded 
                            with emotional justice and unconditional love. 
                        </p>
                    </div>
                    <div class="col-lg-4">
                        <img class="img-circle " src="../Image_new/Fantasy.jpg" alt="Fantasy" width="140" height="140" />

                        <br />
                        <br />

                        <asp:HyperLink ID="Hyper_Fiction_Fantasy" runat="server" Text="Fantasy" NavigateUrl="~/Pages/single_page.aspx?type_of_product=Fiction&Brand=Fantasy" Font-Size="25"></asp:HyperLink>

                        <p align="justify">
                            Stories featuring wizards and sorcery, unicorns and dragons, are fantasy. Through fantasy fiction, readers are allowed to 
                            visit a world they never would have been able to otherwise. Although all fantasy stories are unique,
                            there are some characteristics that are common of the genre.
                        </p>

                    </div>

                    <hr />
                    <hr />
                    <hr />




                    <div class="col-lg-4">
                        <img class="img-circle " src="../Image_new/Horror.jpg" alt="Suspense/Horror" width="140" height="140" />

                        <br />
                        <br />

                        <asp:HyperLink ID="Hyper_Fiction_Suspense" runat="server" Text="Suspense/Horror" NavigateUrl="~/Pages/single_page.aspx?type_of_product=Fiction&Brand=Suspense/Horror" Font-Size="25"></asp:HyperLink>
                        <p align="justify">
                            A story in which the focus is on creating a feeling of fear. Such tales are of ancient origin and form a substantial part of the body of folk literature.
                            An overwhelming and painful feeling caused by something frightfully shocking, terrifying, or revolting; a shuddering fear:
                            to shrink back from a mutilated corpse in horror
                        </p>

                    </div>








                </div>
            </div>
            
            <br />

            <hr />
            <h1>Explore All Non-Fiction Books Here!!!
            </h1>
            <br />
            <br />

            <div class="container center ">
                <div class="row ">
                    <div class="col-lg-4">
                        <img class="img-circle " src="../Image_new/History.jpg" alt="History" width="140" height="140" />
                        <br />
                        <br />
                        
                     <asp:HyperLink ID="Hyper_Non_Fiction_History" runat="server" Text="History" NavigateUrl="~/Pages/single_page.aspx?type_of_product=Non-Fiction&Brand=History" Font-Size="25" ></asp:HyperLink>



                        <p align="justify">
                           Historical nonfiction discusses real-life historical events and eras. 
                            Creative nonfiction that includes historical eras or events does not fictionalize. 
                            While it might read like a novel, its task is to remain factually accurate. 
                            These books should be based upon rigorous research and study..


                        </p>
                    </div>


                    <div class="col-lg-4">
                        <img class="img-circle " src="../Image_new/Biography.jpg" alt="Biographies" height="140" />
                        
                        <br />
                        <br />

                     <asp:HyperLink ID="Hyper_Non_Fiction_Biographies" runat="server" Text="Biographies" NavigateUrl="~/Pages/single_page.aspx?type_of_product=Non-Fiction&Brand=Biographies" Font-Size="25"></asp:HyperLink>
                       
                        <p align="justify">
                            A biography is a true story of a person's life that is written by someone else. 
                            This true story has all the elements of fiction: characters, setting and plot.
                            A biography, also called a bio, is a non-fiction piece of work giving an objective account of a person's life. 
                        </p>
                    </div>
                    <div class="col-lg-4">
                        <img class="img-circle " src="../Image_new/Philosophy.jpeg" alt="Philosophy" width="140" height="140" />

                        <br />
                        <br />

                     <asp:HyperLink ID="Hyper_Non_Fiction_Philosophy" runat="server" Text="Philosophy" NavigateUrl="~/Pages/single_page.aspx?type_of_product=Non-Fiction&Brand=Philosophy" Font-Size="25" ></asp:HyperLink>
                       

                        <p align="justify">
                            Philosophy nonfiction genre are about the fundamental nature of knowledge, reality, and existence as an academic discipline. 
                            The books in this genre also explore fundamental truths about one's self, the world, and their relationships.
                            Today, good philosophy books continue to deal with the challenges we face as a society and how to better understand the world around us. 
                        </p>

                    </div>

                    <hr />
                    <hr />
                    <hr />




                    <div class="col-lg-4">
                        <img class="img-circle " src="../Image_new/Medical.png" alt="Medical" width="140" height="140" />

                        <br />
                        <br />

                       <asp:HyperLink ID="Hyper_Non_Fiction_Medical" runat="server" Text="Medical" NavigateUrl="~/Pages/single_page.aspx?type_of_product=Non-Fiction&Brand=Medical" Font-Size="25" ></asp:HyperLink>


                        <p align="justify">
                           Books in the medical and medicine genre are about medical practices and medicines used to treat illnesses.
                            The books in this genre are often written by medical professionals, such as doctors; pharmacists too, in the instance of medicine.
                            It can also be about newest technology and instruments used in medical profession, or the latest, brst working medicines. 
                        </p>

                    </div>








                </div>
            </div>

            <!---Middle COntents End---->



            <%--            <div class="col-lg-2">
                <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Pages/add_source.xml"></asp:XmlDataSource>

            </div>--%>
            <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [P_ID], [Brand_image], [MRP], [Product_name], [Our_Prize] FROM [main_product] WHERE ([best_offer] = @best_offer) and [Type_of_product] in ( 'Fiction','Non-Fiction') order  by P_ID desc">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="best_offer" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>--%>
        </div>


    </section>

    </a>

</asp:Content>
