<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeePage.aspx.cs" Inherits="EVisa.EmployeePage1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Dashboard</title>
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

        .portal-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
            max-width: 1200px;
            width: 100%;
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
            justify-content: center;
        }

        .card:hover {
            transform: scale(1.05); 
            box-shadow: 0 6px 12px rgba(0,0,0,0.3); 
        }

        .card-icon {
            font-size: 48px; 
            color: #43a047; 
            margin-bottom: 10px;
        }

        .card-title {
            font-size: 22px; 
            color: #4CAF50; 
            font-weight: 700; 
            margin-bottom: 8px;
        }

        .card-description {
            font-size: 16px; 
            color: #666; 
        }
    </style>
</head>
<body>
    <div class="header">
        <asp:Label ID="lblTitle" runat="server" CssClass="title" Text="Employee Dashboard"></asp:Label>
    </div>
    <div class="portal-container">
        <div class="card" onclick="window.location.href='OnsiteReport.aspx'">
            <div class="card-icon">📅</div>
            <div class="card-title">Onsite Details</div>
            <div class="card-description">Check your next onsite schedule and view details such as source, destination, and period.</div>
        </div>
        <div class="card" onclick="window.location.href='UpdateOnsiteProject.aspx'">
            <div class="card-icon">📝</div>
            <div class="card-title">Update Onsite Project</div>
            <div class="card-description">Add details about your project and update its status at regular intervals.</div>
        </div>
        <div class="card" onclick="window.location.href='Feedback.aspx'">
            <div class="card-icon">💬</div>
            <div class="card-title">Feedback</div>
            <div class="card-description">Send feedback directly to the admin.</div>
        </div>
        <div class="card" onclick="window.location.href='EmployeeChangePassword.aspx'">
            <div class="card-icon">🔒</div>
            <div class="card-title">Change Password</div>
            <div class="card-description">Change your password anytime to keep your account secure.</div>
        </div>
    </div>
</body>
</html>
