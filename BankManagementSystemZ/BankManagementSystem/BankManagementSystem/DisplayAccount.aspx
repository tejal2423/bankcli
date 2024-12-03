<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayAccount.aspx.cs" Inherits="BankManagementSystem.DisplayAccount" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Display All Accounts</title>
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

        .table-container {
            background-color: #ffffff; 
            padding: 30px;
            border-radius: 10px;
            width: 80%;
            margin: 50px auto;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); 
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 0 auto;
        }

        table, th, td {
            border: 1px solid #ddd; 
        }

        th, td {
            padding: 15px;
            text-align: center;
            font-size: 18px;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:nth-child(even) {
            background-color: rgba(0, 0, 0, 0.05); 
        }

        tr:hover {
            background-color: rgba(0, 123, 255, 0.3); 
        }

        .back-button {
            position: absolute;
            top: 20px;
            left: 20px;
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
    <form id="form1" runat="server">
        <a href="MainPage.aspx" class="back-button">Back</a> 
        
        <h1>Existing Accounts</h1>
        <div class="table-container">
            <asp:GridView ID="GridViewCustomers" runat="server" AutoGenerateColumns="False"
                HeaderStyle-BackColor="#4CAF50"
                HeaderStyle-ForeColor="White"
                RowStyle-ForeColor="Black"
                RowStyle-BackColor="White">
                <Columns>
                    <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
                    <asp:BoundField DataField="AccountNumber" HeaderText="Account Number" />
                    <asp:BoundField DataField="Password" HeaderText="Password" />
                    <asp:BoundField DataField="InitialBalance" HeaderText="Balance" DataFormatString="{0:C}" />               
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
