
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="daycare_googleform.Admin" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
   
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 10px;
        }

       
        .dropdown-style {
            width: 100%;
            max-width: 300px;
            padding: 10px 15px;
            font-size: 16px;
            font-family: 'Arial', sans-serif;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #f9f9f9;
            color: #333;
            transition: all 0.3s ease;
        }

        .dropdown-style:focus {
            outline: none;
            border-color: #4CAF50;
            background-color: #fff;
        }

        .dropdown-style:hover {
            border-color: #007BFF;
            background-color: #f0f8ff;
        }

        .dropdown-style option {
            padding: 10px;
            font-size: 16px;
            background-color: #fff;
            color: #333;
            border-bottom: 1px solid #f0f0f0;
        }

        .dropdown-style option:checked {
            background-color: #4CAF50;
            color: white;
        }

        .dropdown-style option:first-child {

                color:black;
        }

        @media screen and (max-width: 600px) {
            .dropdown-style {
                max-width: 100%;
                font-size: 14px;
            }

        }
        .search-button {
            width: 100%;
            max-width: 300px;
            padding: 10px 15px;
            font-size: 16px;
            font-family: 'Arial', sans-serif;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #f9f9f9;
            color: #333;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-left: 10px; 
        }

        .search-button:focus {
            outline: none;
            border-color: #4CAF50;
            background-color: #fff;
        }
        
        .search-button:hover {
            border-color: #007BFF;
            background-color: #f0f8ff;
        }
        h2{
/*            background-color:#888;*/
            color:aqua;
        }
        
    </style>
</head>
<body class="body1">
    <form id="form1" runat="server">
        <br /><br />
        
        <center class="drop">
            <asp:Label id="lblMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label><br />
            <div>
                <asp:DropDownList id="ddlFirst" class="dropdown-style" runat="server" OnSelectedIndexChanged="ddlFirst_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Value="0">Select Column</asp:ListItem>
                    <asp:ListItem Value="CarePrograms">CarePrograms</asp:ListItem>
                    <asp:ListItem Value="Activities">Activities</asp:ListItem>
                    <asp:ListItem Value="Features">Features</asp:ListItem>
                    <asp:ListItem Value="DropOffTime">DropOffTime</asp:ListItem>
                    <asp:ListItem Value="PickUpTime">PickUpTime</asp:ListItem>
                    <asp:ListItem Value="CaregiverPreference">CaregiverPreference</asp:ListItem>
                    
                    <asp:ListItem Value="CenterPreference">CenterPreference</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList id="ddlSecond" class="dropdown-style" runat="server">
                    <asp:ListItem Value="0">Select Data</asp:ListItem>
                </asp:DropDownList>

                 <asp:Button runat="server" id="Btn_search" Text="Search" OnClick="Btn_search_Click" CssClass="search-button" />
            
                <br /><br />
            </div>
        </center>
        <br /><br />
        <div>
        
            <asp:Label ID="lblFilterRecords" runat="server" Text="<center><h2>Filter Records</h2></center>" Visible="false"></asp:Label>
            <center><asp:Label id="llmsg" runat="server" ForeColor="Red" Visible="false"></asp:Label></center><br /><br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" CssClass="table" />
        </div>

        <div>
            <center><h2>Child Records</h2></center>
            <div></div>
            <asp:GridView ID="GridViewLogin" runat="server" AutoGenerateColumns="true" CssClass="table" />
        </div>
    </form>
</body>
</html>




<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
