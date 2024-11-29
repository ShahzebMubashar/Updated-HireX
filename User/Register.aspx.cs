//using System;
//using System.Collections.Generic;
//using System.Configuration;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace ProjectDB.User
//{
//    public partial class Login : System.Web.UI.Page
//    {
//        SqlConnection conReg;
//        SqlCommand cmdReg;
//        string strReg = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

//        //protected void Page_Load(object sender, EventArgs e)
//        //{

//        //}

//        public void btnRegisterr_Click(object sender, EventArgs e)
//        {
//            string usernameOrEmail = username.Text.Trim();
//            string pass = password.Text.Trim();

//            // SQL query to check if the username/email and password match any record in the database
//            //string query = "SELECT COUNT(*) FROM Users WHERE (Username = @UsernameOrEmail OR Email = @UsernameOrEmail) AND Password = @Password";
//            string query = "Insert into Users (Email, Password) Values (@UsernameOrEmail, @Password)";
//            // Using the existing SqlConnection from Contact.aspx
//            using (conReg = new SqlConnection(strReg))
//            {
//                using (cmd = new SqlCommand(query, conReg))
//                {
//                    cmdReg.Parameters.AddWithValue("@UsernameOrEmail", usernameOrEmail);
//                    cmdReg.Parameters.AddWithValue("@Password", pass);

//                    try
//                    {
//                        conReg.Open();
//                        int count = (int)cmdReg.ExecuteScalar();

//                        if (count > 0)
//                        {
//                            // Authentication successful, redirect to authenticated page
//                            //Response.Redirect("AuthenticatedPage.aspx");
//                            lblMsg.Visible = true;
//                            lblMsg.Text = "Success";
//                            Response.Redirect("Dashboard.aspx");
//                        }
//                        else
//                        {
//                            // Authentication failed, display error message
//                            lblMsg.Visible = true;
//                            lblMsg.Text = "Invalid username/email or password.";
//                        }
//                    }
//                    catch (Exception ex)
//                    {
//                        lblMsg.Visible = true;
//                        lblMsg.Text = "An error occurred: " + ex.Message;
//                    }
//                }
//            }
//        }
//    }
//}