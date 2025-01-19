using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace daycare_googleform
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BlbMobileNo_Click(object sender, EventArgs e)
        {
            try{
                


                String mobileno = TxtMobileNo.Text.Trim();

                

               

                if (mobileno.Length != 10 || !Regex.IsMatch(mobileno, @"^\d{10}") || mobileno.Length<=9)
                {


                    Label1.Text = "Enter valid mobile no";
                    //Response.Write("<script>alert('Please enter a valid 10-digit mobile number.');</script>");
                    return;
                }
                else
                {
                    string p = "Data Source=LAPTOP-IEL8P023\\SQLEXPRESS;Initial Catalog=DaycareForm;Integrated Security=True;";
                    SqlConnection con = new SqlConnection(p);
                    con.Open();
                    String Query = "INSERT INTO login (mobileno) VALUES ('" + mobileno + "')";
                    SqlCommand cmd = new SqlCommand(Query, con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Form.aspx");
                    //Response.Write("Record saved"); 
                    
                }
                if (string.IsNullOrEmpty(mobileno))
                {

                    Label1.Text = "Enter mobile number.";
                    return;
                }




            }
            catch (Exception ex)
            {
                
                Response.Write("Error: " + ex.Message);
            }
        }

        protected void BlbMobileNo_Click1(object sender, EventArgs e)
        {
            TxtMobileNo.Text = string.Empty;
        }

        protected void AdminB_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
}