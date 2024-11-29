using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDB.User
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString, userEmail, userMessage;
        int UserID;
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
        }

        protected void Submit_Review(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(str);
                string query = "Insert into Feedback (Name, Email, Message) values (@Name, @Email, @Message)";
                cmd = new SqlCommand(query, con);

                con.Open();

            }
            catch (Exception ex)
            {

            }
        }

        protected void Submit_Feedback(object sender, EventArgs e)
        {
            userEmail = Email.Text.Trim();
            userMessage = Message.Text.Trim();

            if (userEmail == null)
                return;

            using (con = new SqlConnection(str))
            {
                string subQuery = "Select UserID from Users where Email = @Email";

                cmd = new SqlCommand(subQuery, con);

                cmd.Parameters.AddWithValue("@Email", userEmail);

                con.Open();
                if (cmd.ExecuteScalar() != null)
                    UserID = (int)cmd.ExecuteScalar();
                else
                    UserID = -1;
            }
            con = new SqlConnection(str);
            string query = "Insert into Feedback (UserID, Email, Message) values (@UserID, @Email, @Message)";

            cmd = new SqlCommand(query, con);

            if (UserID == -1)
                cmd.Parameters.AddWithValue("@UserID", DBNull.Value);
            else
                cmd.Parameters.AddWithValue("@UserID", UserID);
            cmd.Parameters.AddWithValue("@Email", userEmail);
            cmd.Parameters.AddWithValue("@Message", userMessage);
            con.Open();
            cmd.ExecuteScalar();
        }

        private void ClearFields()
        {
            Message.Text = String.Empty;
            Name.Text = String.Empty;
            Email.Text = String.Empty;
        }
    }
}