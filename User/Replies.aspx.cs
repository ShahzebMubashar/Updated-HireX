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
    public partial class Replies : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        int ParentPost;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Status"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }
            ParentPost = (int)Session["PostToReply"];
            SqlConnection con = new SqlConnection(connectionString);
            try
            {
                string Query = "Select * from Posts where PostID = @PostID";

                SqlCommand cmd = new SqlCommand(Query, con);
                cmd.Parameters.AddWithValue("@PostID", ParentPost);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();

                PostAuthor.Text = (string)reader["Username"];
                AuthorContent.Text = (string)reader["PostContent"];
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
            DataTable Replies = getReplies();

            AllReplies.DataSource = Replies;
            AllReplies.DataBind();

        }

        protected void SendReply(object sender, EventArgs args)
        {
            SqlConnection con = new SqlConnection(connectionString);

            string Query = "Insert into Replies(PostID, UserID, ReplyContent, ReplyDate) Values (@PostID, @UserID, @ReplyContent, getDate())";

            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@PostID", (int)Session["PostToReply"]);
            cmd.Parameters.AddWithValue("@UserID", (int)Session["UserID"]);
            cmd.Parameters.AddWithValue("@ReplyContent", txtMessage.Text.Trim());

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            txtMessage.Text = String.Empty;
            Page_Load(sender, args);
        }
        private DataTable getReplies()
        {
            SqlConnection con = new SqlConnection(connectionString);

            string Query = "Select * from Replies where PostID = @PostID";
            int PostID = (int)Session["PostToReply"];
            ParentPost = PostID;
            SqlCommand cmd = new SqlCommand(Query, con);

            cmd.Parameters.AddWithValue("@PostID", PostID);

            DataTable Replies = new DataTable();

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(Replies);


            return Replies;
        }

        protected void Send_Click(object sender, EventArgs e)
        {

        }
    }
}