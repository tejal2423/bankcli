<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="BankManagementSystem.CustomerLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Customer Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; 
            font-family: Arial, sans-serif;
            text-align: center;
            color: #333;
        }

        h1 {
            margin-top: 20px;
            font-size: 36px;
            color: #4CAF50; 
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }

        .container {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 30px;
            border-radius: 10px;
            display: inline-block;
            margin-top: 40px;
            text-align: left;
            width: 320px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
        }

        label {
            font-size: 18px;
            display: block;
            margin-bottom: 8px;
            color: white;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        button, .asp-button {
            display: block;
            width: 100%;
            padding: 12px;
            font-size: 18px;
            color: white;
            background-color: #4CAF50; 
            border: none;
            border-radius: 5px;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            transition: background-color 0.3s, transform 0.3s;
            margin-bottom: 10px;
        }

        button:hover, .asp-button:hover {
            background-color: #45a049; 
            transform: scale(1.05);
        }

        .message {
            font-size: 18px;
            margin-top: 10px;
            padding: 10px;
            text-align: center;
            border-radius: 5px;
        }

        .success-message {
            background-color: rgba(0, 255, 0, 0.1);
            color: limegreen;
            border: 1px solid limegreen;
        }

        .error-message {
            background-color: rgba(255, 0, 0, 0.1);
            color: red;
            border: 1px solid red;
        }
    </style>
</head>
<body>
    <h1>Customer Login</h1>
    <div class="container">
        <form id="customerForm" runat="server">
            <label for="txtAccountNumber">Account Number:</label>
            <asp:TextBox ID="txtAccountNumber" runat="server" CssClass="text-input"></asp:TextBox>
            
            <label for="txtPassword">PIN:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="text-input"></asp:TextBox>
            
            <asp:Button ID="btnCheck" runat="server" Text="Login" OnClick="btnCheck_Click" CssClass="asp-button" />
            
            <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" Visible="false" CssClass="asp-button" />
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" Visible="false" CssClass="asp-button" />
            
            
        </form>
    </div>
</body>
</html>
