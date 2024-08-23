<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageHR.aspx.cs" Inherits="EVisa.ManageEmployee" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage HR</title>
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
            max-width: 1200px; /* Increase form width */
        }

        .card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            padding: 20px;
            text-align: center;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s;
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
            max-width: 800px; /* Increase card width */
        }

        .card:hover {
            transform: scale(1.05);
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
            padding: 12px; /* Increased padding */
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box; /* Ensure padding does not affect width */
        }

        .form-group input[type="submit"], .form-group input[type="button"] {
            background-color: #66bb6a; /* Greenish color */
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
            background-color: #4CAF50; /* Darker green on hover */
        }

        .message {
            margin-top: 20px;
            color: #d9534f;
            font-size: 18px;
        }

        .button-container {
            margin-top: 20px;
        }

        .hr-details {
            display: none; /* Initially hidden */
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="title">Manage HR</div>
    </div>
    <form id="manageHRForm" runat="server">
        <div class="card-container">
            <!-- Card for HR Search -->
            <div class="card">
                <h2>Search HR</h2>
                <div class="form-group">
                    <label for="TextBox1">User ID:</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" />
                </div>
                <div class="button-container">
                    <asp:Button ID="btnViewHR" runat="server" Text="View" OnClick="btnViewHR_Click" CssClass="form-control" />
                    <asp:Button ID="btnInsertHR" runat="server" Text="Insert" OnClick="btnInsertHR_Click" CssClass="form-control" />
                    <asp:Button ID="btnDeleteHR" runat="server" Text="Delete" OnClick="btnDeleteHR_Click" CssClass="form-control" />
                </div>
                <div class="message">
                    <asp:Label ID="lblSearchMessage" runat="server" />
                </div>
            </div>

            <!-- Card for HR Details -->
            <div class="card hr-details" id="hrDetailsCard">
                <h2>HR Details</h2>
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
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Date"/>
                </div>
                <div class="form-group">
                    <label for="TextBox6">Salary:</label>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="TextBox7">Address:</label>
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="TextBox8">Email:</label>
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" />
                </div>
                <div class="message">
                    <asp:Label ID="lblHRDetailsMessage" runat="server" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
