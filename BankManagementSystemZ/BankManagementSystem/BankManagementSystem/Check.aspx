<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Check.aspx.cs" Inherits="BankManagementSystem.Check" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Check Balance</title>
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

        .form-container {
            background-color: rgba(0, 0, 0, 0.6); 
            padding: 30px;
            border-radius: 10px;
            width: 400px;
            margin: 50px auto;
        }

        .balance-info {
            font-size: 20px;
            margin: 20px 0;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
        }

        .back-button {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            color: white;
            background-color: #FF5733; 
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
            transition: background-color 0.3s, transform 0.3s;
            margin-top: 20px; 
        }

        .back-button:hover {
            background-color: #C70039; 
            transform: scale(1.1); 
        }

        .message {
            margin-top: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h1>Check Balance</h1>
    <div class="form-container">
        <div class="balance-info">
            <asp:Label ID="lblTotalBalance" runat="server" Text="Total Balance is:"></asp:Label>
        </div>
        <div class="balance-info">
            <asp:Label ID="lblInitialBalance" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <button class="back-button" onclick="window.location='Next.aspx';">Back</button>
        </div>
    </div>
</body>
</html>

