<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRPage.aspx.cs" Inherits="EVisa.HRPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HR Dashboard</title>
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

        .header {
            text-align: center;
            color: #ffffff; /* White color for the title */
            margin-bottom: 20px;
        }

        .header .title {
            font-size: 36px;
            margin: 0;
        }

        .portal-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
            max-width: 1200px;
            width: 100%;
        }

        .card {
            background: #ffffff; /* White background for the card */
            border-radius: 12px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0,0,0,0.2); /* Soft shadow */
            padding: 20px;
            text-align: center;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s; /* Smooth transition for hover effect */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .card:hover {
            transform: scale(1.05); /* Slightly enlarge card on hover */
            box-shadow: 0 6px 12px rgba(0,0,0,0.3); /* Darker shadow on hover */
        }

        .card-icon {
            font-size: 48px; /* Larger icon size */
            color: #43a047; /* Dark green color for icons */
            margin-bottom: 10px;
        }

        .card-title {
            font-size: 22px; /* Larger title font size */
            color: #4CAF50; /* Green color for title */
            font-weight: 700; /* Bold title */
            margin-bottom: 8px;
        }

        .card-description {
            font-size: 16px; /* Larger description font size */
            color: #666; /* Darker gray for description text */
        }
    </style>
</head>
<body>
    <div class="header">
        <asp:Label ID="lblTitle" runat="server" CssClass="title" Text="HR Dashboard"></asp:Label>
    </div>
    <div class="portal-container">
        <div class="card" onclick="window.location.href='EmployeeDetails.aspx'">
            <div class="card-icon">👥</div>
            <div class="card-title">View Employees</div>
            <div class="card-description">Display all added employees for the HR person.</div>
        </div>
        <div class="card" onclick="window.location.href='NewVisaRequest.aspx'">
            <div class="card-icon">🌍</div>
            <div class="card-title">New Visa Request</div>
            <div class="card-description">Select an employee and add details for a new visa request, including interview dates and consultant details.</div>
        </div>
        <div class="card" onclick="window.location.href='UpdateVisaRequest.aspx'">
            <div class="card-icon">🔄</div>
            <div class="card-title">Update Visa Request</div>
            <div class="card-description">Update interview details and final results for visa requests.</div>
        </div>
        <div class="card" onclick="window.location.href='VisaStatus.aspx'">
            <div class="card-icon">📊</div>
            <div class="card-title">Reporting</div>
            <div class="card-description">View all visa reporting details.</div>
        </div>
        <div class="card" onclick="window.location.href='HRChangePassword.aspx'">
            <div class="card-icon">🔒</div>
            <div class="card-title">Change Password</div>
            <div class="card-description">Change your password anytime to keep your account secure.</div>
        </div>
        <div class="card" onclick="window.location.href='Feedback.aspx'">
            <div class="card-icon">💬</div>
            <div class="card-title">Feedback</div>
            <div class="card-description">Send feedback directly to the admin.</div>
        </div>
    </div>
</body>
</html>

