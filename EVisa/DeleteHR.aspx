<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteHR.aspx.cs" Inherits="EVisa.DeleteHR" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete HR</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(to right, #66bb6a, #43a047); /* Green gradient background */
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
            color: #ffffff; /* White text color for header */
            width: 100%;
        }

        .header .title {
            font-size: 48px;
            font-weight: 700;
            margin-top: 20px;
            letter-spacing: 2px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5); /* Text shadow for better readability */
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
            background: #ffffff; /* White background for the card */
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2); /* Shadow effect */
            width: 100%;
            max-width: 800px; /* Increased width of card */
            padding: 20px;
            box-sizing: border-box;
            overflow: auto; /* Allow scrolling inside the card */
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

        .form-group input[type="text"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .btn-custom {
            width: 100%;
            padding: 15px;
            font-size: 18px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .btn-delete {
            background-color: #ff6f61; /* Red button background */
            color: white;
        }

        .btn-delete:hover {
            background-color: #ff4c4c; /* Darker red on hover */
        }

        .btn-back {
            background-color: #66bb6a; /* Green button background */
            color: white;
        }

        .btn-back:hover {
            background-color: #4CAF50; /* Darker green on hover */
        }

        .message {
            margin-top: 20px;
            font-size: 18px;
            text-align: center;
        }

        .button-group {
            display: flex;
            justify-content: space-between; /* Adjust buttons to be spaced out */
            gap: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="title">Delete HR</div>
        </div>
        <div class="card-container">
            <div class="card">
                <div class="form-group">
                    <label for="TextBoxHRID">HR ID:</label>
                    <asp:TextBox ID="TextBoxHRID" runat="server" CssClass="form-control" />
                </div>
                <div class="button-group">
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CssClass="btn btn-custom btn-delete" />
                    <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" CssClass="btn btn-custom btn-back" />
                </div>
                <div class="message">
                    <asp:Label ID="lblMessage" runat="server" />
                </div>
            </div>
        </div>
    </form>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
