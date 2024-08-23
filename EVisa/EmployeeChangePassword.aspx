<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeChangePassword.aspx.cs" Inherits="EVisa.EmployeeChangePassword" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <style>
        body {
            background: linear-gradient(to right, #66bb6a, #43a047); /* Gradient from light green to dark green */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .container {
            background: #ffffff; /* White background for the form container */
            border-radius: 12px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0,0,0,0.2); /* Soft shadow */
            padding: 20px;
            width: 90%;
            max-width: 500px;
        }

        .header {
            text-align: center;
            color: #4CAF50; /* Green color for the header */
            margin-bottom: 20px;
        }

        .header .title {
            font-size: 24px;
            margin: 0;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 90%;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ddd;
        }

        .form-group input[type="submit"] {
            background-color: #4CAF50; /* Green background */
            color: white; /* White text */
            border: none;
            padding: 10px;
            border-radius: 6px;
            cursor: pointer;
            width: 96%;
        }

        .form-group input[type="submit"]:hover {
            background-color: #45a049; /* Darker green on hover */
        }

        .error-message {
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">
                <asp:Label ID="lblTitle" runat="server" CssClass="title" Text="Change Password"></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="lblUserID" runat="server" Text="User ID:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Label ID="lblNewPassword" runat="server" Text="New Password:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="form-control" />
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="CompareValidator" Font-Bold="False" Font-Italic="False" Font-Size="Small" ForeColor="Red">*Confirm password is different.</asp:CompareValidator>
            </div>
            <div class="form-group">
                <asp:Button ID="btnChangePassword" runat="server" Text="Change Password"  CssClass="form-control" OnClick="btnChangePassword_Click" />
            </div>
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message" />
        </div>
    </form>
</body>
</html>

