<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="daycare_googleform.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        #form1 {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        label {
            font-size: 14px;
            margin: 10px 0 5px;
            display: block;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .form-control:focus {
            border-color: #007bff;
            outline: none;
        }

        #BlbSubmitAdmin {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            margin-top: 20px;
        }

        #BlbSubmitAdmin:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Admin Login</h1>
            <asp:Label ID="LblUsername" runat="server" Text="Username" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="TxtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            
            <asp:Label ID="LblPassword" runat="server" Text="Password" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            
            <asp:Button ID="BlbSubmitAdmin" runat="server" Text="Next" CssClass="form-control" OnClick="BlbSubmitAdmin_Click" />
        </div>
    </form>
</body>
</html>

