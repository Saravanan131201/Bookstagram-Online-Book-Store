using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Shopping_Backup
{
    public partial class Data_Insert : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_back_to_admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin.aspx");
        }


        protected void btnSub_Click(object sender, EventArgs e)
        {

            string Product_path = Server.MapPath("~/Product/");
            string productimg_path = Server.MapPath("~/Product_Img/");

            FileUpload1_brand_image.SaveAs(Product_path + FileUpload1_brand_image.FileName);
            FileUpload2_img_path_1.SaveAs(productimg_path + FileUpload2_img_path_1.FileName);
            FileUpload3_img_path_2.SaveAs(productimg_path + FileUpload3_img_path_2.FileName);
            FileUpload4_img_path_3.SaveAs(productimg_path + FileUpload4_img_path_3.FileName);
            FileUpload5_img_path_4.SaveAs(productimg_path + FileUpload5_img_path_4.FileName);

            string brand_file_name = "~/Product/" + FileUpload1_brand_image.FileName;
            string product_img1 = "~/Product_Img/" + FileUpload2_img_path_1.FileName;
            string product_img2 = "~/Product_Img/" + FileUpload3_img_path_2.FileName;
            string product_img3 = "~/Product_Img/" + FileUpload4_img_path_3.FileName;
            string product_img4 = "~/Product_Img/" + FileUpload5_img_path_4.FileName;

            String ddlbrand = ddlbrand_name.SelectedItem.Text;
            String ddltypeofproduct = ddl_type_of_product.SelectedItem.Text;




            String query = "insert into main_product (product_name,Mrp,Our_Prize,Discount,Brand,Brand_image,Type_of_product,Imagepath1,Imagepath2,Imagepath3, Imagepath4, Detail,Stock,new_arrival,best_seller,best_offer)values(@product_name,@Mrp,@Our_Prise,@Discount,@Brand,@Brand_img,@Type_of_product,@Imgpath1,@Imgpath2,@Imgpath3,@Imgpath4,@Detail,@Stock,@new_arrival,@best_seller,@best_offer)";
            conn.Open();
            SqlCommand cmd = new SqlCommand(query, conn);

            cmd.Parameters.AddWithValue("@product_name", txt_product_name.Text);
            cmd.Parameters.AddWithValue("@Mrp", txt_MRP.Text);
            cmd.Parameters.AddWithValue("@Our_Prise", txt_OUR_prise.Text);
            cmd.Parameters.AddWithValue("@Discount", txt_Discount.Text);
            cmd.Parameters.AddWithValue("@Brand", ddlbrand);
            cmd.Parameters.AddWithValue("@Brand_img", brand_file_name);
            cmd.Parameters.AddWithValue("@Type_of_product", ddltypeofproduct);
            cmd.Parameters.AddWithValue("@Imgpath1", product_img1);
            cmd.Parameters.AddWithValue("@Imgpath2", product_img2);
            cmd.Parameters.AddWithValue("@Imgpath3", product_img3);
            cmd.Parameters.AddWithValue("@Imgpath4", product_img4);
            cmd.Parameters.AddWithValue("@Detail", txt_detail.Text);
            cmd.Parameters.AddWithValue("@Stock", txt_stock.Text);
            cmd.Parameters.AddWithValue("@new_arrival", txt_new_arrival.Text);
            cmd.Parameters.AddWithValue("@best_seller", txt_best_seller.Text);
            cmd.Parameters.AddWithValue("@best_offer", txt_best_offer.Text);



            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Book Added Successfully!!!');  </script>");

            clr();
            conn.Close();

            
        }
       

        protected void ddl_type_of_product_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlbrand_name.Items.Clear();
            if (ddl_type_of_product.SelectedItem.Value == "Fiction")
            {
                ddlbrand_name.Items.Insert(0, "Science");
                ddlbrand_name.Items.Insert(1, "Romance");
                ddlbrand_name.Items.Insert(2, "Fantasy");
                ddlbrand_name.Items.Insert(3, "Suspense/Horror");
                
                
            }
            else
            {
                ddlbrand_name.Items.Insert(0, "History");
                ddlbrand_name.Items.Insert(1, "Biographies");
                ddlbrand_name.Items.Insert(2, "Philosophy");
                ddlbrand_name.Items.Insert(2, "Medical");

            }
        }

        private void clr()
        {
            txt_product_name.Text = string.Empty;
            txt_MRP.Text = string.Empty;
            txt_OUR_prise.Text = string.Empty;
            txt_Discount.Text = string.Empty;
            txt_detail.Text = string.Empty;
            txt_stock.Text = string.Empty;
            txt_new_arrival.Text = string.Empty;
            txt_best_seller.Text = string.Empty;
            txt_best_offer.Text = string.Empty;

        }


    }
}