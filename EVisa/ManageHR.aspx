<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageHR.aspx.cs" Inherits="EVisa.ManageEmployee" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage HR</title>
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
            height: 100vh;
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
            color: #ffffff;
        }

        .header .title {
            font-size: 48px;
            font-weight: 700;
            margin: 0;
            letter-spacing: 2px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }

        .card-container {
            display: flex;
            flex-direction: column; /* Stack cards vertically */
            align-items: center;
            gap: 20px;
            padding: 20px;
            width: 100%;
            max-width: 800px; /* Adjust max width if needed */
        }

        .card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            width: 100%; /* Full width within container */
            max-width: 500px; /* Optional max-width for cards */
            padding: 20px;
            text-align: center;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0,0,0,0.3);
        }

        .card-icon {
            font-size: 40px;
            color: #43a047;
            margin-bottom: 10px;
        }

        .card-title {
            font-size: 20px;
            color: #4CAF50;
            font-weight: 700;
            margin-bottom: 10px;
        }

        .card-description {
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="title">Manage HR</div>
    </div>
    <div class="card-container">
        <!-- Card for Viewing HR -->
        <div class="card" onclick="window.location.href='ViewHR.aspx'">
            <div class="card-icon">🔍</div>
            <div class="card-title">View HR</div>
            <div class="card-description">View details of HR records.</div>
        </div>

        <!-- Card for Editing HR -->
        <div class="card" onclick="window.location.href='EditHR.aspx'">
            <div class="card-icon">✏️</div>
            <div class="card-title">Edit HR</div>
            <div class="card-description">Edit details of HR records.</div>
        </div>

        <!-- Card for Deleting HR -->
        <div class="card" onclick="window.location.href='DeleteHR.aspx'">
            <div class="card-icon">🗑️</div>
            <div class="card-title">Delete HR</div>
            <div class="card-description">Remove HR records from the system.</div>
        </div>
    </div>
</body>
</html>
