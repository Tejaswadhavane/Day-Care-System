<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="final.aspx.cs" Inherits="daycare_googleform.final" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank You!</title>
    <style>
        
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        
        .message-container {
            text-align: center;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 70%;
            max-width: 500px;
        }

        
        h4 {
            color: #4CAF50;
            font-size: 24px;
            margin-bottom: 20px;
        }

        
        p {
            color: #555;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="message-container">
            <h4>You have successfully submitted the form. Thank you!</h4>
            <p>We appreciate your feedback.</p>
        </div>
    </form>
</body>
</html>
