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
    public partial class CreatePost : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        string Username;
        int UserID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
                Response.Redirect("Login.aspx");
            Username = (string)Session["Username"];

            string getUserID = "Select UserID from Users where Username = @Username";

            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand(getUserID, con);

            cmd.Parameters.AddWithValue("@Username", Username);

            con.Open();
            UserID = (int)cmd.ExecuteScalar();
            con.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string Service;
            if (string.IsNullOrEmpty(Checks.SelectedValue))
            {
                ErrCheck.Text = "Select A Service";
                ErrCheck.Visible = true;
                return;
            }
            else
            {
                Service = Checks.SelectedValue;
            }

            string Query = "Insert into Posts(UserID, PostTitle, PostContent, PostDate, Price, Username, Service) values (@UserID, @PostTitle, @PostContent, getDate(), @Price, @Username, @Service)";

            string PostTitle = txtPostTitle.Text.Trim();
            string PostContent = txtServiceDescription.Text.Trim();
            int Price = int.Parse(txtPrice.Text.Trim());

            SqlConnection con = new SqlConnection(str);
            try
            {
                SqlCommand cmd = new SqlCommand(Query, con);

                cmd.Parameters.AddWithValue("@UserID", UserID);
                cmd.Parameters.AddWithValue("@PostTitle", PostTitle);
                cmd.Parameters.AddWithValue("@PostContent", PostContent);
                cmd.Parameters.AddWithValue("@Price", Price);
                cmd.Parameters.AddWithValue("@Username", Username);
                cmd.Parameters.AddWithValue("@Service", Service);
                con.Open();

                if (cmd.ExecuteNonQuery() != 1)
                {
                    throw new Exception("No Rows were affected.");
                }
                else
                {
                    Confirmation.Text = "Post has been made Succesfully!";
                    Confirmation.Visible = true;
                    Confirmation.CssClass = "Confirm";
                    ClearFields();
                    Response.Redirect("newPosts.aspx");
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

        //private int loadChecks()
        //{
        //    int Count = 0;
        //    if (chkTechnician.Checked) Count++;
        //    if (chkPlumber.Checked) Count++;
        //    if (chkElectrician.Checked) Count++;
        //    if (chkCarpenter.Checked) Count++;
        //    if (chkMechanic.Checked) Count++;
        //    if (chkPainter.Checked) Count++;
        //    if (chkWelder.Checked) Count++;

        //    return Count;
        //}

        protected void ClearFields()
        {
            txtPostTitle.Text = String.Empty;
            txtServiceDescription.Text = String.Empty;
            txtPrice.Text = String.Empty;
            txtServiceDescription.Text = String.Empty;
        }
    }
}