using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace daycare_googleform
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string GetSelectedValuesWithOther(CheckBoxList checkBoxList, CheckBox otherCheckBox, TextBox otherTextBox)
        {
            string selectedValues = GetSelectedValues(checkBoxList);
            if (otherCheckBox.Checked && !string.IsNullOrEmpty(otherTextBox.Text.Trim()))
            {
                selectedValues += (selectedValues != "" ? ", " : "") + otherTextBox.Text.Trim();
            }
            return selectedValues;
        }
        private string GetSelectedValues(CheckBoxList checkBoxList)
        {
            var selectedValues = new List<string>();


            foreach (ListItem item in checkBoxList.Items)
            {
                if (item.Selected)
                {

                    selectedValues.Add(item.Text);
                }
            }


            return string.Join(",", selectedValues);
        }

        protected void SubmitB_Click(object sender, EventArgs e)
        {

            bool isValid = true;
            try
            {


                if (string.IsNullOrWhiteSpace(txtChildName.Text))
                {
                    txtChildName.CssClass = "form-control error";
                    txtChildName.Attributes["placeholder"] = "Child's Full Name is required.";
                    isValid = false;
                }
                else
                {
                    txtChildName.CssClass = "form-control";
                    txtChildName.Attributes["placeholder"] = "Enter Child's Full Name";
                }


                if (string.IsNullOrWhiteSpace(txtDOB.Text))
                {
                    txtDOB.CssClass = "form-control error";
                    txtDOB.Attributes["placeholder"] = "Child's Birthdate is required.";
                    isValid = false;
                }
                else
                {
                    txtDOB.CssClass = "form-control";
                    txtDOB.Attributes["placeholder"] = "Enter Child's Birthdate";
                }


                if (string.IsNullOrWhiteSpace(TxtSNMC.Text))
                {
                    TxtSNMC.CssClass = "form-control error";
                    TxtSNMC.Attributes["placeholder"] = "Medical Conditions are required.";
                    isValid = false;
                }
                else
                {
                    TxtSNMC.CssClass = "form-control";
                    TxtSNMC.Attributes["placeholder"] = "Enter Medical Conditions";
                }

                bool isSelected = false;

                //foreach (ListItem item in programcare_check.Items)
                //{
                //    if (item.Selected)
                //    {
                //        isSelected = true;
                //        break;
                //    }
                //}

                //if (!isSelected)
                //{

                //    errorLabel.Text = "You must select at least one program.";
                //    isValid = false;
                //}
                //else
                //{

                //    errorLabel.Text = "";
                //}


                isSelected = false;

                foreach (ListItem item in activitie_check.Items)
                {
                    if (item.Selected)
                    {
                        isSelected = true;
                        break;
                    }
                }


                if (CheckBox_ACtivity_other.Checked)
                {

                    isSelected = true;
                }


                if (!isSelected)
                {

                    errorLabel_activity.Text = "You must select at least one activity.";
                    isValid = false;
                }
                else
                {

                    errorLabel_activity.Text = "";
                }

                isSelected = false;
                foreach (ListItem item in features_check.Items)
                {
                    if (item.Selected)
                    {
                        isSelected = true;
                        break;
                    }
                }
                if (CheckBox_features_other.Checked)
                {

                    isSelected = true;
                }

                if (!isSelected)
                {

                    errorfeatures_check.Text = "You must select at least one featture.";
                    isValid = false;
                }
                else
                {

                    errorfeatures_check.Text = "";
                }

                //isSelected = false;
                //foreach (ListItem item in dropOffTime_check.Items)
                //{
                //    if (item.Selected)
                //    {
                //        isSelected = true;
                //        break;
                //    }
                //}
                //if (CheckBox_dropOffTime_other.Checked)
                //{

                //    isSelected = true;
                //}

                //if (!isSelected)
                //{

                //    Drop_validate.Text = "You must select at least one drop-up time.";
                //    isValid = false;
                //}
                //else
                //{

                //    Drop_validate.Text = "";
                //}

                //isSelected = false;
                //foreach (ListItem item in pickUpTime_check.Items)
                //{
                //    if (item.Selected)
                //    {
                //        isSelected = true;
                //        break;
                //    }
                //}

                //if (CheckBox_pickUpTime_other.Checked)
                //{

                //    isSelected = true;
                //}
                //if (!isSelected)
                //{

                //    pick_validate.Text = "You must select at least one pick-up time.";
                //    isValid = false;
                //}
                //else
                //{

                //    pick_validate.Text = "";
                //}

                isSelected = false;
                foreach (ListItem item in caregiverPreference_check.Items)
                {
                    if (item.Selected)
                    {
                        isSelected = true;
                        break;
                    }
                }


                if (!isSelected)
                {

                    error_Caregiver.Text = "You must select at least one Caregiver.";
                    isValid = false;
                }
                else
                {

                    error_Caregiver.Text = "";
                }

                //CenterPreference_check

                //foreach (ListItem item in CenterPreference_check.Items)
                //{
                //    if (item.Selected)
                //    {
                //        isSelected = true;
                //        break;
                //    }
                //}

                //if (!isSelected)
                //{

                //    error_CenterPreference_check.Text = "You must select at least one CenterPreference.";
                //    isValid = false;
                //}
                //else
                //{

                //    error_CenterPreference_check.Text = "";
                //}




                if (isValid)
                {


                    string childName = txtChildName.Text;
                    string dob = txtDOB.Text;
                    string specialNeeds = TxtSNMC.Text;


                    string carePrograms = GetSelectedValues(programcare_check);
                    string activities = GetSelectedValues(activitie_check);
                    if (CheckBox_ACtivity_other.Checked)
                    {
                        string customActivity = txtOtherActivity.Text.Trim();
                        if (!string.IsNullOrEmpty(customActivity))
                        {
                            activities += (activities != "" ? ", " : "") + customActivity;
                        }
                    }
                    string features = GetSelectedValues(features_check);
                    if (CheckBox_features_other.Checked)
                    {
                        string customActivity = TextBox_feacher.Text.Trim();
                        if (!string.IsNullOrEmpty(customActivity))
                        {
                            features += (features != "" ? ", " : "") + customActivity;
                        }
                    }
                    string dropOffTime = GetSelectedValues(dropOffTime_check);
                    if (CheckBox_dropOffTime_other.Checked)
                    {
                        string customActivity = pickUpTimeText.Text.Trim();
                        if (!string.IsNullOrEmpty(customActivity))
                        {
                            dropOffTime += (dropOffTime != "" ? ", " : "") + customActivity;
                        }
                    }
                    string pickUpTime = GetSelectedValues(pickUpTime_check);
                    if (CheckBox_pickUpTime_other.Checked)
                    {
                        string customActivity = text_pickUpTime.Text.Trim();
                        if (!string.IsNullOrEmpty(customActivity))
                        {
                            pickUpTime += (pickUpTime != "" ? ", " : "") + customActivity;
                        }
                    }
                    string caregiverPreference = GetSelectedValues(caregiverPreference_check);
                    string CenterPreference = GetSelectedValues(CenterPreference_check);

                    DateTime parsedDate;
                    bool isValidDate = DateTime.TryParse(txtDOB.Text, out parsedDate);

                    if (!isValidDate)
                    {

                        Response.Write("<script>alert('Invalid date format');</script>");
                        return;
                    }


                    //SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["myconnection"]);




                    //string connectionString = "Data Source=LAPTOP-IEL8P023\\SQLEXPRESS;Initial Catalog=DaycareForm;Integrated Security=True;";
                    //try
                    //{

                    //using (SqlConnection conn = new SqlConnection(connectionString))
                    //{
                    //    conn.Open();
                    //    string query = @"INSERT INTO ParentPreferenceForm
                    //         (ChildName, DOB, SpecialNeeds, CarePrograms, Activities, Features,
                    //          DropOffTime, PickUpTime, CaregiverPreference, CenterPreference)
                    //         VALUES (@ChildName, @DOB, @SpecialNeeds, @CarePrograms, @Activities, 
                    //                 @Features, @DropOffTime, @PickUpTime, @CaregiverPreference,  @CenterPreference)";

                    //        using (SqlCommand cmd = new SqlCommand("Sp_Add_Childreference", con))
                    //        {
                    //            con.Open();
                    //            cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    //            cmd.Parameters.AddWithValue("@ChildName", childName);
                    //            cmd.Parameters.AddWithValue("@DOB", parsedDate);
                    //            cmd.Parameters.AddWithValue("@SpecialNeeds", specialNeeds);
                    //            cmd.Parameters.AddWithValue("@CarePrograms", carePrograms);
                    //            cmd.Parameters.AddWithValue("@Activities", activities);
                    //            cmd.Parameters.AddWithValue("@Features", features);
                    //            cmd.Parameters.AddWithValue("@DropOffTime", dropOffTime);
                    //            cmd.Parameters.AddWithValue("@PickUpTime", pickUpTime);
                    //            cmd.Parameters.AddWithValue("@CaregiverPreference", caregiverPreference);
                    //            cmd.Parameters.AddWithValue("@CenterPreference", CenterPreference);


                    //            cmd.ExecuteNonQuery();


                    //            con.Close();


                    //        }
                    //    }

                    //    Response.Redirect("final.aspx");





                    //}

                    using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["myconnection"]))
                    {
                        using (SqlCommand cmd = new SqlCommand("Sp_Add_Childreference", con))
                        {
                            con.Open();
                            cmd.CommandType = System.Data.CommandType.StoredProcedure;

                            // Add parameters for the stored procedure
                            cmd.Parameters.AddWithValue("@ChildName", childName);
                            cmd.Parameters.AddWithValue("@DOB", parsedDate);
                            cmd.Parameters.AddWithValue("@SpecialNeeds", specialNeeds);
                            cmd.Parameters.AddWithValue("@CarePrograms", carePrograms);
                            cmd.Parameters.AddWithValue("@Activities", activities);
                            cmd.Parameters.AddWithValue("@Features", features);
                            cmd.Parameters.AddWithValue("@DropOffTime", dropOffTime);
                            cmd.Parameters.AddWithValue("@PickUpTime", pickUpTime);
                            cmd.Parameters.AddWithValue("@CaregiverPreference", caregiverPreference);
                            cmd.Parameters.AddWithValue("@CenterPreference", CenterPreference);

                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }

                    // Redirect to the final page after successful submission
                    Response.Redirect("final.aspx");
                }
            }


            catch (SqlException sqlEx)
            {
                Response.Write("<script>alert('A database error occurred: " + sqlEx.Message + "');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }


        }
    }
}