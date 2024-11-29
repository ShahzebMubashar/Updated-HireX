using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDB
{
    public partial class OTPCheck : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        int GeneratedOTP;
        protected void Page_Load(object sender, EventArgs e)
        {
            GeneratedOTP = (int)Session["OTP"];
        }

        protected void SubmitOTP_Click(object sender, EventArgs e)
        {
            int CheckOTP = int.Parse(OTP.Text);

            if (CheckOTP == GeneratedOTP)
            {
                con = new SqlConnection(str);

                try
                {
                    string inputUsername = (string)Session["Username"];
                    string password = (string)Session["Password"];
                    string userEmail = (string)Session["Email"];
                    string phone = (string)Session["Phone"];
                    string address = (string)Session["Address"];

                    string Query = "Insert into Users (Username, Password, UserType, Email, Phone, Address) Values (@Username, @Password, 'Customer', @Email, @Phone, @Address)";

                    cmd = new SqlCommand(Query, con);

                    cmd.Parameters.AddWithValue("@Username", inputUsername);
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.Parameters.AddWithValue("@Email", userEmail);
                    cmd.Parameters.AddWithValue("@Phone", phone);
                    cmd.Parameters.AddWithValue("@Address", address);

                    con.Open();

                    int Count = cmd.ExecuteNonQuery();

                    if (Count != 1)
                        throw new Exception("Technical Error Occoured");
                    else
                    {
                        Session["Username"] = inputUsername;
                        Session["Status"] = "Online";
                        SendConfirmation(inputUsername, userEmail);
                        Response.Redirect("Dashboard.aspx");
                    }
                }
                catch (Exception ex)
                {

                }
                finally
                {
                    con.Close();
                }
            }
            else
            {
                ErrOTP.Text = "OTP Does Not Match";
                ErrOTP.Visible = true;
            }
        }

        private void SendConfirmation(string username, string toEmail)
        {

            MailMessage message = new MailMessage();

            message.From = new MailAddress("shahzebmubashar7@gmail.com");
            message.Subject = "Account Registeration";
            message.To.Add(new MailAddress(toEmail));
            message.Body = "Dear " + username + ",\nYour account has successfully been Registered at HireX.com";

            var smtpClient = new SmtpClient("smtp.gmail.com")
            {
                Port = 587,
                Credentials = new NetworkCredential("shahzebmubashar7@gmail.com", "rsfw keyc wlci oeec"),
                EnableSsl = true
            };

            smtpClient.Send(message);
            return;
        }
    }
}