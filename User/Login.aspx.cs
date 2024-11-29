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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnLogin_Click(object sender, EventArgs e)
        {
            //string usernameOrEmail = UsernameInput.Text.Trim();
            //string pass = Password.Text.Trim();

            // SQL query to check if the username/email and password match any record in the database
            string query = "SELECT COUNT(*) FROM Users WHERE (Username = @UsernameOrEmail OR Email = @UsernameOrEmail) AND Password = @Password";
            //string query = "Insert into newUsers (email, pass) Values (@UsernameOrEmail, @UsernameOrEmail)";
            string getUserame = "Select Username from Users where Users.Email = @Email OR Username = @Username";
            // Using the existing SqlConnection from Contact.aspx
            string Username = "";

            string usernameOrEmail = UsernameInput.Text.Trim();
            string pass = Password.Text.Trim();

            using (con = new SqlConnection(str))
            {
                using (cmd = new SqlCommand(getUserame, con))
                {
                    cmd.Parameters.AddWithValue("@Email", usernameOrEmail);
                    cmd.Parameters.AddWithValue("@Username", usernameOrEmail);
                    try
                    {
                        con.Open();
                        Username = (string)cmd.ExecuteScalar();
                    }
                    catch (Exception ex)
                    {

                    }
                }
            }
            using (con = new SqlConnection(str))
            {
                using (cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@UsernameOrEmail", usernameOrEmail);
                    cmd.Parameters.AddWithValue("@Password", pass);

                    try
                    {
                        con.Open();
                        int count = (int)cmd.ExecuteScalar();

                        if (count == 1)
                        {
                            Session["Username"] = Username;
                            Session["Status"] = "Online";

                            Session["UserID"] = getUserID(Username);

                            Response.Redirect("Dashboard.aspx");
                        }
                        else
                        {
                            int valid;
                            string subQuery = "Select Count(*) from Users where Email = @Email OR Username = @Email";

                            using (con = new SqlConnection(str))
                            {
                                using (cmd = new SqlCommand(subQuery, con))
                                {
                                    cmd.Parameters.AddWithValue("@Email", usernameOrEmail);
                                    con.Open();

                                    valid = (int)cmd.ExecuteScalar();

                                    if (valid == 1)
                                    {
                                        ErrRes.Text = "Invalid Password for " + usernameOrEmail;
                                    }
                                }
                            }

                            if (valid == 0)
                                ErrRes.Text = "Email/Username: " + usernameOrEmail + " does not Exist at HireX";

                            ErrRes.Visible = true;
                            //// Authentication failed, display error message
                            //lblMsg.Visible = true;
                            //lblMsg.Text = "Invalid username/email or password.";
                            Session["Status"] = null;
                        }
                    }
                    catch (Exception ex)
                    {
                        //lblMsg.Visible = true;
                        //lblMsg.Text = "An error occurred: " + ex.Message;
                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
        }

        private int getUserID(string username)
        {
            con = new SqlConnection(str);

            string Query = "Select UserID from Users where Username = @Username";

            cmd = new SqlCommand(Query, con);

            cmd.Parameters.AddWithValue("@Username", username);
            con.Open();

            return (int)cmd.ExecuteScalar();
        }
        private void ClearFields()
        {
            //username.Text = String.Empty;
            ////email.Value = String.Empty;
            //password.Text = String.Empty;
            ////Password1.Value = String.Empty;
        }
    }
}