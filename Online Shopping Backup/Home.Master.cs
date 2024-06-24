using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Online_Shopping_Backup
{
    public partial class Home : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            btn_submit.Visible = true;
            btn_Edit_Profile.Visible = true;
            // try
            // {

            //     string Role = Session["Role"].ToString();
            //     //string Role = "admin";

            //     lbl_name.Text = "Welcome " + Request.Cookies["uname"].Value;

            //     lbl_name.Text = "Welcome ";
            //    if (Role != null)
            //        {
            //         if (Role == "admin")
            //         {

            //            btn_submit.Visible = true;
            //        }
            //        else
            //         {
            //             btn_submit.Visible = false;
            //         }
            //     }


            //     else
            //     {
            //         btn_submit.Visible = false;

            //     }


            //     if (Role != null)
            //     {
            //         if (Role == "user" || Role == "admin")
            //         {

            //             btn_Edit_Profile.Visible = true;
            //         }
            //         else
            //         {
            //             btn_Edit_Profile.Visible = false;
            //        }
            //    }


            //     else
            //    {
            //        btn_Edit_Profile.Visible = false;

            //     }






            //}
            // catch
            // {

            // }

            // //navigation();

        }



        protected void img_shopping_chart_Click(object sender, ImageClickEventArgs e)
        {
            string u_id = "";
            try
            {
                u_id = Request.Cookies["u_id"].Value;
            }
            catch
            { }

            Response.Redirect("~/add_cart.aspx?u_id=" + u_id);

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Admin.aspx");
        }

        protected void btn_Img_search_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Pages/Search_result.aspx?Search=" + txtSearch.Text);
        }

        protected void btn_Edit_Profile_Click(object sender, EventArgs e)
        {


            Response.Redirect("~/Edit_Profile.aspx");
        }







    }


}
