<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAccount.aspx.cs" Inherits="BankManagementSystem.AddAccount" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Create Account</title>
    <style>
        :root {
            --primary-color: #4CAF50;
            --secondary-color: #ffffff;
            --background-color: #f4f4f9;
            --card-background: #ffffff;
            --button-hover: #45a049;
            --text-color: #333333;
            --shadow-color: rgba(0, 0, 0, 0.2);
            --alert-color: #e74c3c;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .form-container {
            width: 90%;
            max-width: 400px;
            padding: 20px;
            border-radius: 10px;
            background: var(--card-background);
            box-shadow: 0 4px 6px var(--shadow-color);
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
            color: var(--primary-color);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        .button-group {
            margin-top: 20px;
        }

        .back-button {
            display: inline-block;
            margin-top: 15px;
            width: 100%;
            padding: 12px;
            font-size: 16px;
            color: var(--secondary-color);
            background-color: var(--alert-color);
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px var(--shadow-color);
        }

        .back-button:hover {
            background-color: darkred;
            transform: translateY(-2px);
        }

        .back-button:active {
            transform: translateY(1px);
        }
    </style>
    <script type="text/javascript">
        function goBack(event) {
            event.preventDefault(); 
            window.location.href = "MainPage.aspx"; 
        }
    </script>
</head>
<body>
    <div class="form-container">
        <h1>Create Account</h1>
        <form id="addCustomerForm" runat="server">
            <div class="form-group">
                <label for="accountNumber">Enter Account Number:</label>
                <asp:TextBox ID="txtAccountNumber" runat="server" />
            </div>
            <div class="form-group">
                <label for="customerName">Enter Customer Name:</label>
                <asp:TextBox ID="txtCustomerName" runat="server" />
            </div>
            <div class="form-group">
                <label for="initialBalance">Enter Initial Amount:</label>
                <asp:TextBox ID="txtInitialBalance" runat="server" />
            </div>
            <div class="form-group">
                <label for="password">PIN:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            </div>
            <div class="button-group">
                <asp:Button ID="btnSubmit" runat="server" Text="Add Customer" OnClick="btnSubmit_Click" />
            </div>
           
            <button class="back-button" onclick="goBack(event)">Back</button>
            <asp:Label ID="lblMessage" runat="server" Text="" Style="display: block; margin-top: 10px; font-size: 14px; color: var(--primary-color);" />
        </form>
    </div>
</body>
</html>
