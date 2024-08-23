<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewEmployee.aspx.cs" Inherits="EVisa.ViewEmployee1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Employee</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap">
    <style>
        body {
            background: linear-gradient(to right, #66bb6a, #43a047);
            font-family: 'Roboto', Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
            color: #ffffff;
        }

        .header .title {
            font-size: 48px;
            font-weight: 700;
            margin: 0;
            letter-spacing: 2px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }

        .card-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
            padding: 20px;
            width: 100%;
            max-width: 1000px; /* Increase max width of card container */
        }

        .card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 800px; /* Increase max width of card */
            padding: 20px;
            box-sizing: border-box;
            overflow: hidden;
            width: 550px;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
            width: 100%;
        }

        .form-group label {
            display: block;
            font-size: 16px;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .form-group input[type="submit"] {
            background-color: #66bb6a;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 18px;
            padding: 15px;
            border-radius: 4px;
            width: auto;
            transition: background-color 0.3s;
        }

        .form-group input[type="submit"]:hover {
            background-color: #4CAF50;
        }

        .message {
            margin-top: 20px;
            color: #d9534f;
            font-size: 18px;
        }

        .grid-container {
            margin-top: 20px;
            width: 100%;
            overflow-x: auto; /* Handle overflow */
        }

        .grid-view {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        .grid-view th, .grid-view td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        .grid-view th {
            background-color: #66bb6a;
            color: white;
        }

        .grid-view tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="title">View Employee</div>
    </div>
    <form id="viewEmployeeForm" runat="server">
        <div class="card-container">
            <div class="card">
                <h2>Search for Employee</h2>
                <div class="form-group">
                    <label for="TextBoxUserID">User ID:</label>
                    <asp:TextBox ID="TextBoxUserID" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="form-control" />
                </div>
                <div class="message">
                    <asp:Label ID="lblMessage" runat="server" />
                </div>
                <asp:Panel ID="panelGridView" runat="server" CssClass="grid-container" Visible="false">
                    <asp:GridView ID="GridViewEmployee" runat="server" CssClass="grid-view" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="userid" HeaderText="User ID" />
                            <asp:BoundField DataField="username" HeaderText="Username" />
                            <asp:BoundField DataField="role" HeaderText="Role" />
                            <asp:BoundField DataField="manager" HeaderText="Manager" />
                            <asp:BoundField DataField="hiredate" HeaderText="Hire Date" DataFormatString="{0:yyyy-MM-dd}" />
                            <asp:BoundField DataField="salary" HeaderText="Salary" />
                            <asp:BoundField DataField="address" HeaderText="Address" />
                            <asp:BoundField DataField="email" HeaderText="Email" />
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>
