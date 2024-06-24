using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;


namespace Online_Shopping_Backup.Pages
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            

            try
            {
                 conn.Open();

                 SqlCommand cmd = new SqlCommand("insert into login_data values(@name,@password,@role,@address,@mobile_no,@Email,@Answer)", conn);
                    cmd.Parameters.AddWithValue("@name", txt_name.Text);
                    cmd.Parameters.AddWithValue("@password", txt_password.Text);
                    cmd.Parameters.AddWithValue("@role", ddl_role.SelectedValue);
                    cmd.Parameters.AddWithValue("@address", txt_address.Text);
                    cmd.Parameters.AddWithValue("@mobile_no", txt_mobile_no.Text);
                    cmd.Parameters.AddWithValue("@Email", txt_Email_address.Text);
                    cmd.Parameters.AddWithValue("@Answer", txt_answer.Text);

                    
                  
                  
                  cmd.ExecuteNonQuery();
                
                Response.Write("<script> alert('Registration Successfully done');  </script>");
                clr();
                conn.Close();




             }

            catch {
                lbl_error.Text = "Chose another username this username exist";
            
            }

           

        }

        private void clr()
        {
            txt_name.Text = string.Empty;
            txt_password.Text = string.Empty;
            txt_Email_address.Text = string.Empty;
            txt_address.Text = string.Empty;
            txt_mobile_no.Text = string.Empty;
           txt_answer.Text = string.Empty;
        }

    }
}