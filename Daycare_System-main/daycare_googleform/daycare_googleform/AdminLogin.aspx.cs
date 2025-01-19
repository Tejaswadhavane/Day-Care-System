using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace daycare_googleform
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BlbSubmitAdmin_Click(object sender, EventArgs e)
        {
            
            string username = TxtUsername.Text.Trim();
            string password = TxtPassword.Text.Trim();

            
            if (username == "IBM" && password == "IBM123")
            {
                
                Response.Redirect("Admin.aspx"); 
            }
            else
            {
                
                Response.Write("<script>alert('Invalid username or password. Please try again.');</script>");
            }

            
        }
    }
}