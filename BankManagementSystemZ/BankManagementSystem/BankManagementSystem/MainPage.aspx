<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="BankManagementSystem.MainPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Bank Management System</title>
    <style>
        :root {
            --primary-color: #4CAF50;
            --secondary-color: #ffffff;
            --background-color: #f4f4f9;
            --card-background: #ffffff;
            --button-hover: #45a049;
            --text-color: #333333;
            --shadow-color: rgba(0, 0, 0, 0.2);
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
            height: 100vh;
        }

        .dashboard-container {
            width: 90%;
            max-width: 500px;
            padding: 20px;
            border-radius: 10px;
            background: var(--card-background);
            box-shadow: 0 4px 6px var(--shadow-color);
            text-align: center;
        }

        .dashboard-container h1 {
            font-size: 28px;
            margin-bottom: 20px;
            color: var(--primary-color);
        }

        .dashboard-container p {
            font-size: 14px;
            margin-bottom: 30px;
            color: var(--text-color);
        }

        .button-group {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .button-group button {
            background-color: var(--primary-color);
            color: var(--secondary-color);
            border: none;
            border-radius: 5px;
            padding: 15px;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0 4px 6px var(--shadow-color);
            transition: all 0.3s ease;
        }

        .button-group button:hover {
            background-color: var(--button-hover);
            transform: translateY(-2px);
            box-shadow: 0 6px 8px var(--shadow-color);
        }

        .button-group button:active {
            transform: translateY(1px);
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h1>Savings Bank</h1>
        <p>Welcome to the bank portal. Select an option below to proceed.</p>
        <div class="button-group">
            <button type="button" onclick="window.location='AddAccount.aspx';">1. Create Account</button>
            <button type="button" onclick="window.location='CustomerLogin.aspx';">2. Customer Login</button>
            <button type="button" onclick="window.location='DisplayAccount.aspx';">3. Display All Accounts</button>
            <button type="button" onclick="window.location='DeleteAccount.aspx';">4. Delete Existing Account</button>
        </div>
    </div>
</body>
</html>
