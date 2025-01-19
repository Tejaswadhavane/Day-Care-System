<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="daycare_googleform.Form" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
     
    <link href="css/form.css" rel="stylesheet" />

</head>
<body>
    <br />
    <center>
        <h2>
            <img src="IMI%20LOGO.png" height="50" width="50" />&nbsp;&nbsp;Daycare Centre Parent Preferences
        </h2>
    </center>
    <br />

    <form id="form2" runat="server" >
    
    <div class="container">
        <div class="box box-left">
    <h5 style="color: #6A5ACD;">CHILD's Information : </h5>
    <asp:Label runat="server" Text="Child's Full Name" Style="display: inline-block; margin-right: 10px; ">

    </asp:Label><asp:TextBox ID="txtChildName" runat="server" CssClass="form-control" placeholder="Enter Child's Full Name"  Style="display: inline-block; width: 260px; height: 30px; padding: 5px; border: 1px solid #ccc; border-radius: 4px;" onfocus="clearValidationMessage('rfvChildName')"  ></asp:TextBox>
    <asp:RequiredFieldValidator 
    ID="rfvChildName" 
    runat="server" 
    ControlToValidate="txtChildName" 
    InitialValue="" 
    ErrorMessage="Child's Full Name is required." 
    ForeColor="Red" 
    
        Display="None" /> 
        

    

    <asp:Label runat="server" Text=" Child's Birthdate " Style="display: inline-block; margin-right: 10px; "></asp:Label>
    <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" placeholder="Enter Child's Birthdate" Style="display: inline-block; width: 260px; height: 30px; padding: 5px; border: 1px solid #ccc; border-radius: 4px;"  onfocus="clearValidationMessage('rfvDOB')"></asp:TextBox>
    <asp:RequiredFieldValidator 
                    ID="rfvDOB" 
                    runat="server" 
                    ControlToValidate="txtDOB" 
                    InitialValue="" 
                    ErrorMessage="Child's Birthdate is required." 
                    ForeColor="Red"
                    Display="None" 
                     />
    <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDOB" Format="dd/MM/yyyy" OnClientDateSelectionChanged="onDateSelected" PopupButtonID="txtDOB"  />
    

    

    <asp:Label runat="server" Text="Medical Conditions" Style="display:inline-block; margin-bottom: 10px;"></asp:Label>
    <asp:TextBox ID="TxtSNMC" runat="server" CssClass="form-control" placeholder="Enter Medical Conditions" Style="display: inline-block; width: 250px; height: 30px; padding: 5px; border: 1px solid #ccc; border-radius: 4px;" onfocus="clearValidationMessage('RequiredFieldValidator2')" ></asp:TextBox>
    

    
    <h5 style="color: #FFA500;">C.A.R.E. Programs :</h5>
    <asp:Label ID="Label1"  runat="server" Text="1. What type of care or programs are you currently looking for? (Select all that apply)" Style="font-size:15px;" ></asp:Label>
    <asp:CheckBoxList ID="programcare_check" runat="server" CssClass="compactCheckboxList" RepeatColumns="2" RepeatLayout="Table"  >

        <asp:ListItem Text="Prep Program" Value="1"></asp:ListItem>
        <asp:ListItem Text="Daycare" Value="2"></asp:ListItem>
        <asp:ListItem Text="After-School Programs" Value="3"></asp:ListItem>
        <asp:ListItem Text="SaturYAY care" Value="4"></asp:ListItem>
        <asp:ListItem Text="Academic Support" Value="5"></asp:ListItem>  
       
    </asp:CheckBoxList>
    <asp:Label ID="errorLabel" runat="server" Text="" ForeColor="Red" />
   


    

    
    <h5 style="color: #BA55D3;">Activities your child enjoys :</h5>
    <asp:Label ID="Label2" runat="server" Text="2. Which type of activities does your child enjoy the most? (Select all that apply)"></asp:Label>
    
            <asp:CheckBoxList ID="activitie_check" runat="server" CssClass="compactCheckboxList" RepeatColumns="2" RepeatLayout="Table">
        <asp:ListItem Text="Outdoor Play" Value="1"></asp:ListItem>
        
        <asp:ListItem Text="Arts and crafts" Value="2"></asp:ListItem>
      
        <asp:ListItem Text="Group games" Value="3"></asp:ListItem>
        <asp:ListItem Text="Music and Movement" Value="4"></asp:ListItem>
        <asp:ListItem Text="Building and Construction" Value="5"></asp:ListItem>
        <asp:ListItem Text="Sensory activities" Value="6"></asp:ListItem>
        <asp:ListItem Text="Cooking / baking activities" Value="7"></asp:ListItem>
        <asp:ListItem Text="Puzzles" Value="8"></asp:ListItem>
       
        <asp:ListItem Text="Reading and Story Telling" Value="9"></asp:ListItem>
        <asp:ListItem Text="Problem solving" Value="9"></asp:ListItem>
     

    </asp:CheckBoxList>
    
    <div style="display: flex; align-items: center; margin-top: 0px;" class="div2_box">
        <asp:CheckBox ID="CheckBox_ACtivity_other" runat="server" Value="10" style="vertical-align: middle;" />
        <span style="margin-left: 5px;">Other</span>
        
            <asp:TextBox ID="txtOtherActivity" runat="server" style="border: 1px solid #000; width: 100px; margin-left:5px; height: 20px; margin-top: 4px; margin-bottom: 10px; vertical-align: middle;" />
        
            <%--<input type="text" id="txtOtherActivity" style="border: 1px solid #000; width: 100px; margin-left:5px;height: 20px;margin-top: 4px; margin-bottom: 10px; vertical-align: middle;" />--%>
    </div>
    <asp:Label ID="errorLabel_activity" runat="server" Text="" ForeColor="Red" />



    

            

</div>


<div class="box box-right">
    
    
    <h5 style="color: #87CEEB;">Program Features :</h5>
    <asp:Label ID="Label3" runat="server" Text="3. What features are most important to you in a program ? (Select all that apply)"></asp:Label>
    <asp:CheckBoxList ID="features_check" runat="server" CssClass="compactCheckboxList" RepeatColumns="2" RepeatLayout="Table">
        <asp:ListItem Text="Flexible hour" Value="1"></asp:ListItem>
        <asp:ListItem Text="Safety and Security" Value="2"></asp:ListItem>
        <asp:ListItem Text="Affordable pricing" Value="3"></asp:ListItem>
        <asp:ListItem Text="Educational focus" Value="4"></asp:ListItem>
        <asp:ListItem Text="Social development opportunities" Value="5"></asp:ListItem>
        <asp:ListItem Text="Nutritious meals/snacks" Value="6"></asp:ListItem>
        <asp:ListItem Text="Low child-to-staff ratio" Value="7"></asp:ListItem>
        <asp:ListItem Text="Reimbursement" Value="8"></asp:ListItem>
    </asp:CheckBoxList>
        <div style="display: flex; align-items: center; margin-top: 0px;" class="div2_box">
        <asp:CheckBox ID="CheckBox_features_other" runat="server" Value="10" style="vertical-align: middle;" />
        <span style="margin-left: 5px;">Other</span>
                <asp:TextBox ID="TextBox_feacher" runat="server" style="border: 1px solid #000; width: 100px; margin-left:5px; height: 20px; margin-top: 4px; margin-bottom: 10px; vertical-align: middle;" />
        
    </div>
    <asp:Label ID="errorfeatures_check" runat="server" Text="" ForeColor="Red" />
    

    
    <h5 style="color: #6A5ACD;">General Care Preferences:</h5>
    <div class="container2">
        <div class="box box-left2">
            <p>1.  Drop-off Time</p>
            <asp:CheckBoxList ID="dropOffTime_check" runat="server">
                <asp:ListItem Text="7:00 AM-8:00 AM" Value="1"></asp:ListItem>
                <asp:ListItem Text="8:00 AM-9:00 AM" Value="2"></asp:ListItem>
                <asp:ListItem Text="9:00 AM-10:00 AM" Value="3"></asp:ListItem>
                
            </asp:CheckBoxList>
            <div style="display: block; margin-top: 0px;" class="div2_box">
                <asp:CheckBox ID="CheckBox_dropOffTime_other" runat="server" Text="Other" Value="10" style="vertical-align: middle;" />
            
                 <asp:TextBox ID="pickUpTimeText" runat="server" style="border: 1px solid #000; width: 100px; margin-left:5px; height: 20px; margin-top: 4px; margin-bottom: 10px; vertical-align: middle;" />
            </div>
            <asp:Label ID="Drop_validate" runat="server" Text="" ForeColor="Red" />

        </div>
        <div class="box box-right2">
            <p>2.  pick-up Time</p>
            <asp:CheckBoxList ID="pickUpTime_check" runat="server">
                <asp:ListItem Text="3:00 PM-4:00 PM" Value="1"></asp:ListItem>
                <asp:ListItem Text="4:00 PM-5:00 PM" Value="2"></asp:ListItem>
                <asp:ListItem Text="5:00 PM-6:00 PM" Value="3"></asp:ListItem>
                
            </asp:CheckBoxList>
            <div style="display: block; margin-top: 0px;" class="div2_box">
                <asp:CheckBox ID="CheckBox_pickUpTime_other" runat="server" Text="Other" Value="10" style="vertical-align: middle;" />
                
                 <asp:TextBox ID="text_pickUpTime" runat="server" style="border: 1px solid #000; width: 100px; margin-left:5px; height: 20px; margin-top: 4px; margin-bottom: 10px; vertical-align: middle;" />
            </div>
            <asp:Label ID="pick_validate" runat="server" Text="" ForeColor="Red" />
        </div>
    </div>
    <div class="box box-right3">
    <p>3. Preferred Caregiver (if any)</p>
    <asp:CheckBoxList ID="caregiverPreference_check" runat="server" CssClass="compactCheckboxList" RepeatColumns="2" RepeatLayout="Table">
        <asp:ListItem Text="No Preference" Value="1"></asp:ListItem>
        <asp:ListItem Text="Specific Caregiver" Value="2"></asp:ListItem>
        <asp:ListItem Text="Willing to rotate caregivers" Value="3"></asp:ListItem>
    </asp:CheckBoxList>
        <asp:Label ID="error_Caregiver" runat="server" Text="" ForeColor="Red" />
    </div>

    

   
    

    <%--<h5 style="color:#FFA500;">INFINITY C.A.R.E. </h5>--%>
    <h5>
      <span style="color: #6A5ACD;">INFINITY </span>
      
      <span style="color: #87CEEB;">C.</span>
      <span style="color: #FFA500;">A.</span>
      <span style="color: #BA55D3;">R.</span>
      <span style="color: #5F9EA0;">E.</span>
    </h5>

    <asp:CheckBoxList ID="CenterPreference_check" runat="server" CssClass="compactCheckboxList" RepeatColumns="3" RepeatLayout="Table">
        <asp:ListItem Text="1.Brain Mapping" Value="1"></asp:ListItem>
        <asp:ListItem Text="2.Parents Seminar" Value="2"></asp:ListItem>
        <asp:ListItem Text="3.IIDI-@centre" Value="3"></asp:ListItem>
        <asp:ListItem Text="4.IIDI-@home" Value="4"></asp:ListItem>
        <asp:ListItem Text="5.Counselor Help" Value="1"></asp:ListItem>
        <asp:ListItem Text="6.Play dates" Value="2"></asp:ListItem>
    </asp:CheckBoxList>
    <asp:Label ID="error_CenterPreference_check" runat="server" Text="" ForeColor="Red" />
    
</div>



    </div>

    
    
    <div class="btn-container">
        <asp:Button ID="SubmitB" runat="server" Text="Submit" OnClick="SubmitB_Click" class="btn btn-primary" />
    </div>

</form>

        
</body>
</html>


<script type="text/javascript">
    function onDateSelected(sender, e) {
        
        var calendar = $find('<%= CalendarExtender1.ClientID %>');
        calendar.hide();
    
        
        var txtDOB = document.getElementById('<%= txtDOB.ClientID %>');
       
    }
    function clearValidationMessage(validatorID) {
        var validator = $get(validatorID);
        if (validator && validator.style.display !== 'none') {
            
            validator.style.display = 'none';
        }
    }
    

        
        function validateForm() {
            var validator = document.getElementById('<%= rfvChildName.ClientID %>');
            if (document.getElementById('<%= txtChildName.ClientID %>').value == "") {
                validator.style.display = "block"; 
            }
        }
</script>



<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


