using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace daycare_googleform
{
    public partial class Admin : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    BindGridView();


                    ddlSecond.Items.Add(new ListItem("Select Data", "0"));
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error during page load: " + ex.Message;
                    lblMessage.Visible = true;
                }
            }
            
        }

        protected void ddlFirst_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                string selectedValue = ddlFirst.SelectedValue;



                ddlSecond.Items.Clear();


                ddlSecond.Items.Add(new ListItem("Select Data", "0"));


                List<string> options = new List<string>();


                switch (selectedValue)
                {
                    case "CarePrograms":
                        options = new List<string>
                        {
                            "Daycare",
                            "After-School Programs",
                            "SaturYAY care",
                            "Prep Program",
                            "Academic Support"
                        };
                        break;

                    case "Activities":
                        options = new List<string>
                    {
                        "Outdoor Play",
                        "Arts and crafts",
                        "Group games",
                        "Music and Movement",
                        "Building and Construction",
                        "Sensory activities",
                        "Cooking / baking activities",
                        "Puzzles",
                        "Reading and Story Telling",
                        "Problem solving",
                        "Other"
                    };
                        break;

                    case "Features":
                        options = new List<string>
                    {
                        "Flexible hour",
                        "Low child-to-staff ratio",
                        "Affordable pricing",
                        "Educational focus",
                        "Social development opportunities",
                        "Nutritious meals/snacks",
                        "Reimbursement",
                        "Safety and Security",
                        "Other"
                    };
                        break;

                    case "DropOffTime":
                        options = new List<string>
                    {
                        "7:00 AM-8:00 AM",
                        "8:00 AM-9:00 AM",
                        "9:00 AM-10:00 AM",
                        "Other"
                    };
                        break;

                    case "PickUpTime":
                        options = new List<string>
                    {
                        "3:00 PM-4:00 PM",
                        "4:00 PM-5:00 PM",
                        "5:00 PM-6:00 PM",
                        "Other"
                    };
                        break;

                    case "CaregiverPreference":
                        options = new List<string>
                    {
                        "No Preference",
                        "Specific Caregiver",
                        "Willing to rotate caregivers"
                    };
                        break;

                    

                    case "CenterPreference":
                        options = new List<string>
                    {
                        "1.Brain Mapping",
                        "2.Parents Seminar",
                        "3.IIDI-@centre",
                        "4.IIDI-@home",
                        "5.Counselor Help",
                        "6.Play dates",
                    };
                        break;

                    default:
                        break;
                }


                foreach (var option in options)
                {
                    ddlSecond.Items.Add(new ListItem(option, option));
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error while updating dropdown: " + ex.Message;
                lblMessage.Visible = true;
            }
        }

        
        protected void Btn_search_Click(object sender, EventArgs e)
        {
            try
            {
                string selectedColumn = ddlFirst.SelectedValue;
                string selectedData = ddlSecond.SelectedValue;

                //Response.Write("selceted column:" + selectedColumn);

                //Response.Write("selceted Data:" + selectedData);

                if (selectedColumn == "0" || selectedData=="0")
                {
                
                    lblMessage.Text = "Please select a valid value from the dropdown.";
                    lblMessage.Visible = true;


                    return;
                }
                else
                {
                    lblMessage.Visible = false;
                }


                if (!string.IsNullOrEmpty(selectedColumn) && selectedData != "0")
                {
                    string connectionString = "Data Source=LAPTOP-IEL8P023\\SQLEXPRESS;Initial Catalog=DaycareForm;Integrated Security=True;";
                
                    string query = "SELECT * FROM ParentPreferenceForm WHERE "
                     + selectedColumn + " LIKE @FilterValue OR Activities LIKE @FilterValue";

                    

                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(query, conn);
                    
                        da.SelectCommand.Parameters.AddWithValue("@FilterValue", "%" + selectedData + "%");
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                    
                        GridView1.DataSource = dt;
                        GridView1.DataBind();


                        if (GridView1.Rows.Count > 0)
                        {
                            lblFilterRecords.Visible = true;
                            llmsg.Visible = false;
                        }
                        else
                        {
                            lblFilterRecords.Visible = false;
                            llmsg.Text="No Data Found";
                            llmsg.Visible = true;
                        }
                    }
                }
                else
                {
                
                    BindGridView();
                    llmsg.Text = "No Data Found";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error during search operation: " + ex.Message;
                lblMessage.Visible = true;
            }


        }

        
        private void BindGridView()
        {
            try
            {

                string connectionString = "Data Source=LAPTOP-IEL8P023\\SQLEXPRESS;Initial Catalog=DaycareForm;Integrated Security=True;";
                //string query = "SELECT login.ID, login.mobileno, ParentPreferenceForm.ChildName, ParentPreferenceForm.DOB,  ParentPreferenceForm.SpecialNeeds, ParentPreferenceForm.CarePrograms, ParentPreferenceForm.Activities, ParentPreferenceForm.Features, ParentPreferenceForm.DropOffTime, ParentPreferenceForm.PickUpTime, ParentPreferenceForm.CaregiverPreference, ParentPreferenceForm.CenterPreference " +
                //"FROM login FULL OUTER JOIN ParentPreferenceForm ON login.ID = ParentPreferenceForm.ID";

                string query = "SELECT     login.ID,    ISNULL(login.mobileno, 'N/A') AS mobileno,    ISNULL(ParentPreferenceForm.ChildName, 'N/A') AS ChildName,     ISNULL(ParentPreferenceForm.DOB, 'N/A') AS DOB,      ISNULL(ParentPreferenceForm.SpecialNeeds, 'N/A') AS SpecialNeeds,     ISNULL(ParentPreferenceForm.CarePrograms, 'N/A') AS CarePrograms,     ISNULL(ParentPreferenceForm.Activities, 'N/A') AS Activities,     ISNULL(ParentPreferenceForm.Features, 'N/A') AS Features,     ISNULL(ParentPreferenceForm.DropOffTime, 'N/A') AS DropOffTime,    ISNULL(ParentPreferenceForm.PickUpTime, 'N/A') AS PickUpTime,     ISNULL(ParentPreferenceForm.CaregiverPreference, 'N/A') AS CaregiverPreference,     ISNULL(ParentPreferenceForm.CenterPreference, 'N/A') AS CenterPreference FROM    login FULL OUTER JOIN     ParentPreferenceForm ON     login.ID = ParentPreferenceForm.ID;";
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    SqlDataAdapter da = new SqlDataAdapter(query, conn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                
                    GridViewLogin.DataSource = dt;
                    GridViewLogin.DataBind();
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error during grid binding: " + ex.Message;
                lblMessage.Visible = true;
            }
        }

        
       
    }
}




