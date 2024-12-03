<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteAccount.aspx.cs" Inherits="BankManagementSystem.DeleteAccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Delete Customer</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            text-align: center;
        }

        h1 {
            margin-top: 20px;
            font-size: 36px;
            color: #4CAF50;
        }

        .form-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            width: 400px;
            margin: 50px auto;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
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
            border: 1px solid #ddd;
        }

        button {
            width: 100%;
            padding: 10px;
            font-size: 18px;
            color: white;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            transition: background-color 0.3s, transform 0.3s;
        }

        button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        .back-button {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #FF5733;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            transition: background-color 0.3s, transform 0.3s;
        }

        .back-button:hover {
            background-color: #C70039;
            transform: scale(1.1);
        }
    </style>
</head>
<body>

    
    <h1>Delete Account</h1>
    <div class="form-container">
        <form id="deleteCustomerForm" runat="server">
            <div class="form-group">
                <label for="accountNumber">Enter Account Number to Delete:</label>
                <asp:TextBox ID="txtAccountNumber" runat="server" />
            </div>
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
            <asp:Label ID="lblMessage" runat="server" Text="" Style="display: block; margin-top: 20px; font-size: 18px; color: lightgreen;" />
        </form>
        <button class="back-button" onclick="window.location='MainPage.aspx';">Back</button>
    </div>
</body>
</html>
