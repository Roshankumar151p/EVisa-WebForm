<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="EVisa.AddEmployee" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee</title>
    <style>
        body {
            background: linear-gradient(to right, #66bb6a, #43a047);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
            color: #ffffff;
            width: 100%;
            max-width: 1200px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 20px;
        }

        .header .title {
            font-size: 36px;
            margin: 0;
        }

        .card-container {
            display: flex;
            flex-direction: column;
            gap: 20px;
            padding: 20px;
            width: 100%;
            max-width: 800px;
        }

        .card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
            width: 500px;
        }

        .card:hover {
            transform: scale(1.02);
            box-shadow: 0 6px 12px rgba(0,0,0,0.3);
        }

        .card h2 {
            font-size: 24px;
            color: #4CAF50;
            margin-bottom: 20px;
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

        .form-group input, .form-group select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .form-group input[type="submit"], .form-group input[type="button"] {
            background-color: #66bb6a;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 18px;
            padding: 15px;
            border-radius: 4px;
            width: auto;
            transition: background-color 0.3s;
            display: block;
            margin: 0 auto;  /* Center the button */
        }

        .form-group input[type="submit"]:hover, .form-group input[type="button"]:hover {
            background-color: #4CAF50;
        }

        .message {
            margin-top: 20px;
            color: #d9534f;
            font-size: 18px;
        }

        .credentials-container {
            margin-top: 30px;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: none;
            width: 100%;
            max-width: 800px;
        }

        .credentials-container h3 {
            font-size: 20px;
            color: #4CAF50;
            margin-bottom: 15px;
        }

        .credentials-container p {
            font-size: 16px;
            color: #333;
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="title">Add New Employee</div>
    </div>
    <form id="addEmployeeForm" runat="server">
        <div class="card-container">
            <div class="card">
                <h2>Employee Details</h2>
                <div class="form-group">
                    <label for="TextBox1">User ID:</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="TextBox2">Username:</label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="TextBox3">Role:</label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="TextBox4">Manager:</label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="TextBox5">Hire Date:</label>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Date" />
                </div>
                <div class="form-group">
                    <label for="TextBox6">Salary:</label>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Number" />
                </div>
                <div class="form-group">
                    <label for="TextBox7">Address:</label>
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="TextBox8">Email:</label>
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" TextMode="Email" />
                </div>
                <div class="form-group">
                    <label for="TextBox9">Password:</label>
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" TextMode="Password" />
                </div>
                <div class="form-group">
                    <asp:Button ID="btnSubmit" runat="server" Text="Add Employee" OnClick="btnSubmit_Click" CssClass="form-control" />
                </div>
                <div class="message">
                    <asp:Label ID="lblMessage" runat="server" />
                </div>
            </div>
        </div>

        <!-- Employee Credentials Section -->
        <div id="credentialsSection" class="credentials-container">
            <h3>Employee Credentials</h3>
            <p><strong>User ID:</strong> <asp:Label ID="lblUserID" runat="server" /></p>
            <p><strong>Username:</strong> <asp:Label ID="lblUsername" runat="server" /></p>
            <p><strong>Password:</strong> <asp:Label ID="lblPassword" runat="server" /></p>
        </div>
    </form>
</body>
</html>
