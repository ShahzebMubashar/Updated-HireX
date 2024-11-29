using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace ProjectDB.User
{
    public partial class MyPosts : System.Web.UI.Page
    {
        int UserID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Status"] == null)
                Response.Redirect("Login.aspx");
            else
                LoginVisibility.Visible = SignUpVisibility.Visible = false;
            UserID = (int)Session["UserID"];

            if (!IsPostBack)
            {
                // Call a method to retrieve product data from the database
                DataTable postData = getPostData();

                // Bind productData to the repeater control
                postRepeater.DataSource = postData;
                postRepeater.DataBind();

            }
        }

        private DataTable getPostData()
        {
            string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
            string Query = "Select * from Posts where UserID = @UserID order by PostID desc";

            DataTable postData = new DataTable();

            // Establish connection and retrieve data
            using (SqlConnection con = new SqlConnection(str))
            {
                using (SqlCommand cmd = new SqlCommand(Query, con))
                {
                    cmd.Parameters.AddWithValue("@UserID", UserID);
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        // Fill the DataTable with product data
                        adapter.Fill(postData);
                    }
                }
            }

            return postData;
        }
    }
}