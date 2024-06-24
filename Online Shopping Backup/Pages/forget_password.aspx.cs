using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace Online_Shopping_Backup.Pages
{
    public partial class forget_password : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string username = txt_username.Text;
            string question = DropDownList1.SelectedItem.Text;
            string answer = txt_answer.Text;
            string newPassword = txt_new_password.Text;

            string query = "SELECT * FROM login_data WHERE name=@name AND Answer=@Answer";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@name", username);
            cmd.Parameters.AddWithValue("@Answer", answer);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                string dbAnswer = reader["Answer"].ToString();
                if (dbAnswer.Equals(answer, StringComparison.OrdinalIgnoreCase))
                {
                    reader.Close();
                    string updateQuery = "UPDATE login_data SET password=@NewPassword WHERE name=@name";
                    SqlCommand updateCmd = new SqlCommand(updateQuery, conn);
                    updateCmd.Parameters.AddWithValue("@NewPassword", newPassword);
                    updateCmd.Parameters.AddWithValue("@name", username);
                    updateCmd.ExecuteNonQuery();

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password updated successfully.');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Incorrect answer.');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Username or question not found.');", true);
            }
            conn.Close();
        }
    }
}
