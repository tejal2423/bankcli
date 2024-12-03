<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deposit.aspx.cs" Inherits="BankManagementSystem.Deposit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Deposit</title>
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

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            display: block;
            font-size: 18px;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: none;
        }

        button, .asp-button {
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
            margin-bottom: 20px; 
        }

        button:hover, .asp-button:hover {
            background-color: #45a049; 
            transform: scale(1.05); 
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
    <h1>Deposit Money</h1>
    <div class="form-container">
        <form id="depositForm" runat="server">
            <div class="form-group">
                <label for="txtDepositAmount">Enter Amount to Deposit:</label>
                <asp:TextBox ID="txtDepositAmount" runat="server" CssClass="text-input"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="Deposit" OnClick="btnSubmit_Click" CssClass="asp-button" />
            </div>
            <div>
               
                <a href="Next.aspx" class="back-button">Back</a> 
            </div>
            <asp:Label ID="lblMessage" runat="server" Text="" CssClass="message" />
        </form>
    </div>
</body>
</html>
