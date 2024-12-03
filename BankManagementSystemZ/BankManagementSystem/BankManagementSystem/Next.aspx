<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Next.aspx.cs" Inherits="BankManagementSystem.Next" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Banker Dashboard</title>
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

        nav {
            background-color: rgba(0, 0, 0, 0.6); 
            padding: 20px;
            border-radius: 10px;
            display: inline-block;
            margin-top: 40px;
        }

        nav button {
            display: block;
            width: 300px; 
            padding: 10px 20px;
            margin: 10px auto;
            font-size: 18px;
            color: white;
            background-color: #4CAF50; 
            border: none;
            border-radius: 5px;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            transition: background-color 0.3s, transform 0.3s;
        }

        nav button:hover {
            background-color: #45a049;
            transform: scale(1.05); 
        }
    </style>
</head>
<body>
    <h1>User Dashboard</h1>
    <nav>
        <form id="bankerForm" runat="server">
            <button type="button" onclick="window.location='Deposit.aspx';">1. Deposit </button>
            <button type="button" onclick="window.location='Withdraw.aspx';">2. Withdraw </button>
            <button type="button" onclick="window.location='Check.aspx';">3. Check Balance</button>
            <button type="button" onclick="window.location='MainPage.aspx';">4. Exit </button>
        </form>
    </nav>
</body>
</html>

