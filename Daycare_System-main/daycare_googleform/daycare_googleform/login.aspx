<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="daycare_googleform.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            background-color: #f4f4f9;
            font-family: Arial, sans-serif;
            position: relative; 
        }

       
        .admin-btn-container {
            position: absolute;
            top: 20px;
            right: 20px;
        }

        .form-container {
            text-align: center;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 300px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .form-container h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .form-container label {
            font-weight: bold;
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #0056b3;
        }
        img {
            margin: 20px;
            padding: 10px;
        }


    </style>
</head>
<body>
    
    
    <form id="form1" runat="server">
        
        <center>
        <img src="IMI%20LOGO.png" height="500" width="500" />

        </center>
        
        <div class="admin-btn-container">
            
            <asp:Button ID="AdminB" runat="server" Text="Admin" OnClick="AdminB_Click" class="btn btn-primary" />
        </div>
        <br /><br />
        <center>
            <div class="form-container">
                <asp:Label runat="server" Text="Enter Mobile No"></asp:Label>
                <asp:TextBox ID="TxtMobileNo" runat="server" OnTextChanged="BlbMobileNo_Click" MaxLength="10" />
                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                <br /><br />
                <asp:Button ID="BlbMobileNo" runat="server" Text="Next" class="btn btn-primary" OnClick="BlbMobileNo_Click1" />
            </div>
        </center>

    </form>

</body>
</html>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
