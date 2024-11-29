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
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        string userName, AddressVal, ContactInfo;
        int UserID, Count;
        double RatingValue;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Status"] != null)
            {
                userName = (string)Session["Username"];
                lblName.Text = "@" + userName;
                Name.Text = "Name: " + userName;

                string getAddress = "Select Address from Users where Username = @Username";
                string getContact = "Select Phone from Users where UserID = @UserID";
                string getRating = "Select Rating from Ratings where TradesmanID = @UserID";
                string getUserID = "Select UserID from Users where Username = @Username";
                string setCount = "Select Count(*) from Users where Username = @Username";
                string getTransactions = "Select count(*) from Transactions where UserID = @UserID";
                string getBalance = "Select * from Transactions where TradesmanID = @UserID";
                string getCurrentBalance = "Select * from Transactions where UserID = @UserID";

                using (con = new SqlConnection(str))
                {
                    using (cmd = new SqlCommand(setCount, con))
                    {
                        con.Open();
                        cmd.Parameters.AddWithValue("@Username", userName);

                        Count = (int)cmd.ExecuteScalar();

                    }
                }

                using (con = new SqlConnection(str))
                {
                    using (cmd = new SqlCommand(getUserID, con))
                    {
                        con.Open();
                        cmd.Parameters.AddWithValue("@Username", Session["Username"]);
                        UserID = (int)cmd.ExecuteScalar();
                    }
                }

                using (con = new SqlConnection(str))
                {
                    using (cmd = new SqlCommand(getRating, con))
                    {
                        con.Open();
                        cmd.Parameters.AddWithValue("@UserID", UserID);
                        Session["UserID"] = UserID;
                        SqlDataReader reader = cmd.ExecuteReader();

                        double RatingCalc = 0;
                        int i = 0;

                        while (reader.Read())
                        {
                            RatingCalc += reader.GetDouble(0);
                            i++;
                        }

                        RatingValue = RatingCalc / i;

                        if (i == 0)
                            Rating.Text = "Rating: NULL";
                        else
                            Rating.Text = "Rating: " + RatingValue.ToString("N2") + "/5";
                        RatingCalc += 4.5;
                        RatingValue = RatingCalc / (i + 1);
                    }
                }

                using (con = new SqlConnection(str))
                {
                    using (cmd = new SqlCommand(getAddress, con))
                    {
                        cmd.Parameters.AddWithValue("@Username", userName);

                        try
                        {
                            con.Open();
                            AddressVal = (string)cmd.ExecuteScalar();
                        }
                        catch (Exception ex)
                        {

                        }
                        finally
                        {
                            con.Close();
                        }
                    }
                    using (cmd = new SqlCommand(getContact, con))
                    {
                        cmd.Parameters.AddWithValue("@UserID", UserID);

                        try
                        {
                            con.Open();
                            SqlDataReader reader = cmd.ExecuteReader();
                            reader.Read();
                            //ContactInfo = (string)cmd.ExecuteScalar();
                            ContactInfo = reader.GetString(0);
                            Contact.Text = ContactInfo;
                        }
                        catch (Exception ex)
                        {
                            //ContactInfo = "Invalid";
                        }
                        finally
                        {
                            con.Close();
                        }
                    }
                    using (cmd = new SqlCommand(getTransactions, con))
                    {
                        cmd.Parameters.AddWithValue("@UserID", UserID);

                        try
                        {
                            con.Open();
                            int CountTransactions = (int)cmd.ExecuteScalar();

                            transactions.Text = "Transactions: " + CountTransactions;
                        }
                        catch (Exception ex)
                        {

                        }
                        finally
                        {
                            con.Close();
                        }
                    }
                    int totalBalance = 0;
                    using (cmd = new SqlCommand(getBalance, con))
                    {
                        cmd.Parameters.AddWithValue("@UserID", UserID);
                        try
                        {
                            con.Open();

                            SqlDataReader read = cmd.ExecuteReader();

                            while (read.Read())
                                totalBalance += (int)read.GetInt32(3);

                            TotalEarnings.Text = "Total Earnings: $" + totalBalance;
                        }
                        catch (Exception ex)
                        {

                        }
                        finally
                        {
                            con.Close();
                        }
                    }
                    using (cmd = new SqlCommand(getCurrentBalance, con))
                    {
                        cmd.Parameters.AddWithValue("@UserID", UserID);

                        try
                        {
                            con.Open();

                            SqlDataReader read = cmd.ExecuteReader();

                            int currentBalance = 0;
                            while (read.Read())
                                currentBalance += (int)read.GetInt32(3);

                            totalBalance -= currentBalance;

                            CurrentBalance.Text = "Current Balance: $" + totalBalance;
                        }
                        catch (Exception ex)
                        {

                        }
                        finally
                        {
                            con.Close();
                        }
                    }
                    string Query = "Select Top 2 * from Transactions where TradesmanID = @UserID order by TransactionDate desc";
                    try
                    {
                        string TradesmanName = "";
                        int OrderID = 0, TradesmanID = 0, Amount = 0;
                        for (int i = 0; i < 2; i++)
                        {
                            int j = 0;
                            cmd = new SqlCommand(Query, con);

                            cmd.Parameters.AddWithValue("@UserID", UserID);
                            con.Open();

                            SqlDataReader reader = cmd.ExecuteReader();
                            while (j <= i)
                            {
                                reader.Read();
                                j++;
                            }

                            OrderID = (int)reader.GetInt32(0);
                            TradesmanID = (int)reader.GetInt32(1);

                            con.Close();
                            try
                            {
                                string getTradesmanName = "Select Username from Users where UserID = @UserID";
                                cmd = new SqlCommand(getTradesmanName, con);

                                cmd.Parameters.AddWithValue("@UserID", TradesmanID);
                                con.Open();

                                TradesmanName = (string)cmd.ExecuteScalar();
                            }
                            catch (Exception ex)
                            {

                            }
                            finally { con.Close(); }

                            try
                            {
                                string getAmount = "Select Amount from Transactions where TransactionID = @TransactionID";
                                cmd = new SqlCommand(getAmount, con);

                                cmd.Parameters.AddWithValue("@TransactionID", OrderID);
                                con.Open();

                                Amount = (int)cmd.ExecuteScalar();
                            }
                            catch (Exception ex)
                            {

                            }
                            finally
                            {
                                con.Close();
                            }

                            if (i == 0)
                            {
                                Order1.Text = "Order #" + OrderID;
                                Order1Customer.Text = "Customer: " + TradesmanName;
                                Order1Amount.Text = "Amount: $" + Amount;
                            }
                            if (i == 1)
                            {
                                Order2.Text = "Order #" + OrderID;
                                Order2Customer.Text = "Customer: " + TradesmanName;
                                Order2Amount.Text = "Amount: $" + Amount;
                            }
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

                Address.Text = "Address: " + AddressVal;
                Contact.Text = "Contact: " + ContactInfo;
                //Rating.Text = "Rating: " + RatingValue + "/5";
                Overall.Text = "Rating: " + RatingValue.ToString("N2") + "/5";
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void DeleteAccount_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(str);

                string deleteAccount = "Delete from Users where UserID = @UserID";

                cmd = new SqlCommand(deleteAccount, con);

                cmd.Parameters.AddWithValue("@UserID", UserID);

                con.Open();
                cmd.ExecuteScalar();

                Session["Status"] = null;
                Response.Redirect("Home.aspx");
            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }
        }

        protected void SessionTimeout(object sender, EventArgs e)
        {
            Session["Status"] = null;
            Response.Redirect("Home.aspx");
        }
    }
}