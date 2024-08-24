<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditHR.aspx.cs" Inherits="EVisa.EditHR" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit HR</title>
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
            min-height: 100vh;
            overflow: auto; /* Allow scrolling if content overflows */
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
            color: #ffffff;
            width: 100%;
        }

        .header .title {
            font-size: 48px;
            font-weight: 700;
            margin-top: 20px;
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
            max-width: 1000px; /* Increased width */
        }

        .card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 800px; /* Increased width of card */
            padding: 20px;
            box-sizing: border-box;
            overflow: auto; /* Allow scrolling inside the card */
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
        }

        .form-group input[type="submit"]:hover, .form-group input[type="button"]:hover {
            background-color: #4CAF50;
        }

        .message {
            margin-top: 20px;
            color: #d9534f;
            font-size: 18px;
        }

        #editHRForm {
            width: 100%;
            max-width: 1000px;
            margin: 0 auto;
            position: relative;
            overflow: visible;
        }

        /* Ensure the form and card container are always centered */
        .centered-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="title">Edit HR</div>
    </div>
    <form id="editHRForm" runat="server">
        <div class="card-container">
            <div class="card">
                <h2>Edit HR Details</h2>
                <div class="form-group">
                    <label for="TextBoxHRID">HR ID:</label>
                    <asp:TextBox ID="TextBoxHRID" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="form-control" />
                </div>
                <asp:Panel ID="panelEditForm" runat="server" CssClass="card" Visible="false">
                    <div class="form-group">
                        <label for="TextBoxHRName">HR Name:</label>
                        <asp:TextBox ID="TextBoxHRName" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="TextBoxHRRole">Role:</label>
                        <asp:TextBox ID="TextBoxHRRole" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="TextBoxManager">Manager:</label>
                        <asp:TextBox ID="TextBoxManager" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="TextBoxHireDate">Hire Date:</label>
                        <asp:TextBox ID="TextBoxHireDate" runat="server" CssClass="form-control" TextMode="Date" />
                    </div>
                    <div class="form-group">
                        <label for="TextBoxSalary">Salary:</label>
                        <asp:TextBox ID="TextBoxSalary" runat="server" CssClass="form-control" TextMode="Number" />
                    </div>
                    <div class="form-group">
                        <label for="TextBoxAddress">Address:</label>
                        <asp:TextBox ID="TextBoxAddress" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="TextBoxEmail">Email:</label>
                        <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control" TextMode="Email" />
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update HR" OnClick="btnUpdate_Click" CssClass="form-control" />
                    </div>
                    <div class="message">
                        <asp:Label ID="lblMessage" runat="server" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>

