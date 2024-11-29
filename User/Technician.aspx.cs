using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDB.User
{
    public partial class Technician : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Status"] == null)
            {
                LoginVisibility.Visible = true;
                SignUpVisibility.Visible = true;
            }
            else
            {
                LoginVisibility.Visible = false;
                SignUpVisibility.Visible = false;
            }

            if (!IsPostBack)
            {
                // Call a method to retrieve product data from the database
                DataTable productData = GetProductData();

                // Bind productData to the repeater control
                postRepeater.DataSource = productData;
                postRepeater.DataBind();

            }
        }

        private DataTable GetProductData()
        {
            // Define connection string and SQL query
            string connectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
            string Query = "Select * from Posts where Service = 'Technician' order by PostID desc";

            // Create DataTable to store product data
            DataTable productData = new DataTable();

            // Establish connection and retrieve data
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(Query, connection))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        // Fill the DataTable with product data
                        adapter.Fill(productData);
                    }
                }
            }

            return productData;
        }

        protected void Negotiate_Click(object sender, EventArgs e)
        {
            if (Session["Status"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}