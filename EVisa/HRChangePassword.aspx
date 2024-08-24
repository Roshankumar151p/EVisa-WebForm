<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRChangePassword.aspx.cs" Inherits="EVisa.HRChangePassword" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
            padding: 30px;
            width: 100%;
            width: 500px;
        }

        .header {
            text-align: center;
            color: #4CAF50; /* Green color for the header */
            margin-bottom: 20px;
        }

        .header .title {
            font-size: 24px;
            margin: 0;
            font-weight: 700;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group input {
            border-radius: 6px;
            border: 1px solid #ddd;
        }

        .btn-custom {
            background-color: #4CAF50; /* Green background */
            color: white; /* White text */
            border: none;
            padding: 10px 20px;
            border-radius: 6px;
            cursor: pointer;
        }

        .btn-custom:hover {
            background-color: #45a049; /* Darker green on hover */
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
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
                <asp:Label ID="lblUserID" runat="server" Text="User ID:" AssociatedControlID="TextBox1"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Label ID="lblOldPassword" runat="server" Text="Old Password:" AssociatedControlID="TextBoxOldPassword"></asp:Label>
                <asp:TextBox ID="TextBoxOldPassword" runat="server" TextMode="Password" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Label ID="lblNewPassword" runat="server" Text="New Password:" AssociatedControlID="TextBox2"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" AssociatedControlID="TextBox3"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="form-control" />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Passwords do not match." CssClass="error-message" />
            </div>
            <div class="form-group text-center">
                <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" CssClass="btn btn-custom" OnClick="btnChangePassword_Click" />
                <br />
                <asp:Label ID="lblMessage" runat="server" CssClass="error-message" />
            </div>
        </div>
    </form>

    <!-- Include Bootstrap JS (Optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

