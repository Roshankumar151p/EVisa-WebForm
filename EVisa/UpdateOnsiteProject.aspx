<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateOnsiteProject.aspx.cs" Inherits="EVisa.UpdateOnsiteProject" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Visa Request</title>
    <style>
        body {
            background: linear-gradient(to right, #66bb6a, #43a047);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .header {
            text-align: center;
            color: #ffffff;
            margin-bottom: 20px;
        }

        .header .title {
            font-size: 36px;
            margin: 0;
        }

        .card-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
            padding: 20px;
            max-width: 700px;
            width: 100%;
        }

        .card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 500px;
            padding: 30px;
            box-sizing: border-box;
        }

        .card h2 {
            margin-top: 0;
            margin-bottom: 20px;
            color: #43a047;
            text-align: center; /* Center-align the card heading */
        }

        .input-container {
            margin-bottom: 15px;
        }

        .input-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        .input-container input,
        .input-container select {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ddd;
            box-sizing: border-box;
        }

        .input-container select {
            background-color: #f9f9f9; /* Make the dropdown clearer */
        }

        .input-container button {
            background-color: #43a047;
            color: #ffffff;
            padding: 10px 16px; /* Reduced padding to make the button less wide */
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
            width: auto; /* Set the button to its natural width */
            display: block;
            margin: 10px auto 0 auto; /* Center the button horizontally */
        }

        .input-container button:hover {
            background-color: #388e3c;
        }

        .message {
            text-align: center;
            font-size: 14px;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="title">New Visa Request</div>
        </div>
        <div class="card-container">
            <div class="card">
                <h2>Add Visa Details</h2>
                <div class="input-container">
                    <label for="TextBoxEmployeeID">Employee ID:</label>
                    <asp:TextBox ID="TextBoxEmployeeID" runat="server"></asp:TextBox>
                </div>
                <div class="input-container">
                    <label for="TextBoxVisaType">Visa Type:</label>
                    <asp:TextBox ID="TextBoxVisaType" runat="server"></asp:TextBox>
                </div>
                <div class="input-container">
                    <label for="TextBoxVisaExpiry">Visa Expiry Date:</label>
                    <asp:TextBox ID="TextBoxVisaExpiry" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="input-container">
                    <label for="DropDownListRenewalRequested">Renewal Requested:</label>
                    <asp:DropDownList ID="DropDownListRenewalRequested" runat="server">
                        <asp:ListItem Text="YES" Value="YES"></asp:ListItem>
                        <asp:ListItem Text="NO" Value="NO"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-container">
                    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="ButtonSubmit_Click" />
                </div>
                <div class="message">
                    <asp:Label ID="lblMessage" runat="server" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
