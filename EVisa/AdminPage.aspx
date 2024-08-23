<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="EVisa.EmployeePage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
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
        }

        .header .title {
            font-size: 36px;
            margin-top: 10px;
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
        <div class="title">Admin Dashboard</div>
    </div>
    <div class="portal-container">
        <div class="card" onclick="window.location.href='AddHR.aspx'">
            <div class="card-icon">👤</div>
            <div class="card-title">Add HR</div>
            <div class="card-description">Add basic details for HR and generate login credentials.</div>
        </div>
        <div class="card" onclick="window.location.href='ManageHR.aspx'">
            <div class="card-icon">🛠️</div>
            <div class="card-title">Manage HR</div>
            <div class="card-description">View, edit, or delete HR details.</div>
        </div>
        <div class="card" onclick="window.location.href='AddEmployee.aspx'">
            <div class="card-icon">👥</div>
            <div class="card-title">Add Employee</div>
            <div class="card-description">Add basic details for employees and generate login credentials.</div>
        </div>
        <div class="card" onclick="window.location.href='ManageEmployee.aspx'">
            <div class="card-icon">📝</div>
            <div class="card-title">Manage Employee</div>
            <div class="card-description">View, edit, or delete employee details.</div>
        </div>
        <div class="card" onclick="window.location.href='VisaStatus.aspx'">
            <div class="card-icon">📅</div>
            <div class="card-title">Visa Status</div>
            <div class="card-description">View current visa status, expiry information, and request renewal.</div>
        </div>
        <div class="card" onclick="window.location.href='ApplicantReport.aspx'">
            <div class="card-icon">🔍</div>
            <div class="card-title">Applicant Report</div>
            <div class="card-description">Search employees and view detailed applicant reports.</div>
        </div>
        <div class="card" onclick="window.location.href='InterviewReport.aspx'">
            <div class="card-icon">📋</div>
            <div class="card-title">Interview Report</div>
            <div class="card-description">View reports on employee interviews and their statuses.</div>
        </div>
        <div class="card" onclick="window.location.href='ResultReport.aspx'">
            <div class="card-icon">📈</div>
            <div class="card-title">Result Report</div>
            <div class="card-description">View final result reports with candidate details and outcomes.</div>
        </div>
        <div class="card" onclick="window.location.href='OnsiteReport.aspx'">
            <div class="card-icon">📊</div>
            <div class="card-title">Onsite Report</div>
            <div class="card-description">View onsite reports and details entered by employees.</div>
        </div>
        <div class="card" onclick="window.location.href='Feedback.aspx'">
            <div class="card-icon">💬</div>
            <div class="card-title">Feedback</div>
            <div class="card-description">View and manage feedback from employees and HR.</div>
        </div>
    </div>
</body>
</html>
