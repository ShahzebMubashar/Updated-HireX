using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectDB.User
{
    public partial class About : System.Web.UI.Page
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
        }
    }
}