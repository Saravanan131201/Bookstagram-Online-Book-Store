using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Shopping_Backup
{
    public partial class add_cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            GridView1.DataBind();
        }

        protected void ddlQuantity_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            GridViewRow row = (GridViewRow)ddl.NamingContainer;
            int o_id = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
            int quantity = Convert.ToInt32(ddl.SelectedValue);
            decimal price = Convert.ToDecimal(((HiddenField)row.FindControl("hfPrice")).Value);
            decimal total = quantity * price;

            UpdateCart(o_id, quantity, total);
            BindGrid();
        }

        private void UpdateCart(int o_id, int quantity, decimal total)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "UPDATE cart_product SET quantity = @quantity, total = @total WHERE o_id = @o_id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@quantity", quantity);
                cmd.Parameters.AddWithValue("@total", total);
                cmd.Parameters.AddWithValue("@o_id", o_id);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList ddlQuantity = (DropDownList)e.Row.FindControl("ddlQuantity");
                if (ddlQuantity != null)
                {
                    DataRowView rowView = (DataRowView)e.Row.DataItem;
                    ddlQuantity.SelectedValue = rowView["quantity"].ToString();
                }
            }
        }

        protected void btn_place_order_Click(object sender, ImageClickEventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                int u_id = Convert.ToInt32(Request.Cookies["u_id"].Value);

                string product_id = "";

                conn.Open();

                string query = "SELECT STUFF((SELECT ','+ CAST([product_id] AS VARCHAR) AS [text()] FROM [Shopping].[dbo].[cart_product] WHERE [user_id] = @user_id FOR XML PATH('')), 1, 1, '')";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@user_id", u_id);
                var result = cmd.ExecuteScalar();
                if (result != DBNull.Value)
                    product_id = (string)result;
                conn.Close();

                Response.Redirect("~/order_summary.aspx?product_id=" + product_id);
            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                int o_id = Convert.ToInt32(GridView1.DataKeys[index].Value);
                DeleteCart(o_id);
                BindGrid();
            }
        }

        private void DeleteCart(int o_id)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "DELETE FROM cart_product WHERE o_id = @o_id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@o_id", o_id);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
}
