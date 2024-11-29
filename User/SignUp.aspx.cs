using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDB.User
{
    public partial class SignUp : System.Web.UI.Page
    {
        int GeneratedOTP;
        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            ErrEmail.Visible = ErrConfirmPassword.Visible = ErrPassword.Visible = ErrPhone.Visible = ErrUsername.Visible = false;
            try
            {
                string userEmail = Email.Text.Trim();
                string password = Password.Text.Trim();
                string confirmPass = ConfirmPassword.Text.Trim();
                string inputUsername = username.Text.Trim();
                string address = Address.Text.Trim();
                string phone = Phone.Text.Trim();

                con = new SqlConnection(str);

                string Query = "Select Count(*) from Users where Username = @Username";

                cmd = new SqlCommand(Query, con);
                cmd.Parameters.AddWithValue("@Username", inputUsername);

                con.Open();

                int Count = (int)cmd.ExecuteScalar();

                if (Count > 0)
                {
                    con.Close();
                    ErrUsername.Visible = true;
                    ErrUsername.Text = "Username already Exists! Try Using " + distinctUsername(inputUsername);
                    username.Text = String.Empty;
                    return;
                }

                con = new SqlConnection(str);

                Query = "Select Count(*) from Users where Email = @Email";

                cmd = new SqlCommand(Query, con);

                cmd.Parameters.AddWithValue("@Email", userEmail);
                con.Open();

                Count = (int)cmd.ExecuteScalar();

                if (Count > 0)
                {
                    con.Close();
                    ErrEmail.Visible = true;
                    ErrEmail.Text = "Email already Registered!";
                    return;
                }
                else if (confirmPass != password)
                {
                    ErrConfirmPassword.Visible = ErrPassword.Visible = true;
                    ErrConfirmPassword.Text = ErrPassword.Text = "Passwords do not match!";
                }

                else if (phone.Length != 11)
                {
                    ErrPhone.Visible = true;
                    ErrPhone.Text = "Invalid Phone Number!";
                }
                else if (confirmPass == password)
                {
                    Random Generate = new Random();
                    GeneratedOTP = Generate.Next(100000, 1000000);

                    Session["Username"] = inputUsername;
                    Session["Email"] = userEmail;
                    Session["Password"] = password;
                    Session["Address"] = address;
                    Session["Phone"] = phone;
                    Session["OTP"] = GeneratedOTP;



                    con = new SqlConnection(str);

                    try
                    {
                 

                        string Query1 = "Insert into Users (Username, Password, UserType, Email, Phone, Address) Values (@Username, @Password, 'Customer', @Email, @Phone, @Address)";

                        cmd = new SqlCommand(Query1, con);

                        cmd.Parameters.AddWithValue("@Username", inputUsername);
                        cmd.Parameters.AddWithValue("@Password", password);
                        cmd.Parameters.AddWithValue("@Email", userEmail);
                        cmd.Parameters.AddWithValue("@Phone", phone);
                        cmd.Parameters.AddWithValue("@Address", address);

                        con.Open();

                        int Count1 = cmd.ExecuteNonQuery();

                        if (Count1 != 1)
                            throw new Exception("Technical Error Occoured");
                        else
                        {
                            Session["Username"] = inputUsername;
                            Session["Status"] = "Online";
                          
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


                    return;
             
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





        private void ClearFields()
        {
            Email.Text = String.Empty;
            ConfirmPassword.Text = String.Empty;
            Phone.Text = String.Empty;
            Address.Text = String.Empty;
            username.Text = String.Empty;
            Password.Text = String.Empty;
        }

        //private bool checkEmail(string inputEmail)
        //{
        //    int flags = 0;
        //    foreach (char i in inputEmail)
        //        if (i == '@')
        //            flags = 1;

        //    if (inputEmail.Contains(".com") && flags == 1)
        //        return true;
        //    return false;
        //}

        protected string distinctUsername(string inputUsername)
        {
            con = new SqlConnection(str);
            string Query = "Select Count(*) from Users where Username = @Username";

            int Count = 1;
            while (Count > 0)
            {
                Random randomGen = new Random();
                int j = randomGen.Next(100);
                cmd = new SqlCommand(Query, con);
                cmd.Parameters.AddWithValue("@Username", inputUsername);

                con.Open();
                Count = (int)cmd.ExecuteScalar();

                if (Count > 0)
                {
                    inputUsername += j;
                }
                con.Close();
            }
            return inputUsername;
        }
    }
}