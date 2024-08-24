<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewFeedback.aspx.cs" Inherits="EVisa.ViewFeedback" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Feedback</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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

        .container {
            max-width: 1000px;
            margin: 20px auto;
            background: #ffffff; 
            border-radius: 12px; 
            box-shadow: 0 8px 16px rgba(0,0,0,0.2); 
            padding: 30px;
            box-sizing: border-box;
        }

        .header {
            text-align: center;
            color: #333; 
            margin-bottom: 30px;
        }

        .header .title {
            font-size: 36px;
            font-weight: 700;
            margin: 0;
        }

        .grid-view {
            margin-top: 20px;
        }

        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">
                <asp:Label ID="lblTitle" runat="server" CssClass="title" Text="Feedback Records"></asp:Label>
            </div>
            <asp:GridView ID="gvFeedback" runat="server" CssClass="table table-striped table-bordered grid-view" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="gvFeedback_PageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="employeeid" HeaderText="Employee ID" SortExpression="employeeid" />
                    <asp:BoundField DataField="hrid" HeaderText="HR ID" SortExpression="hrid" />
                    <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                    <asp:BoundField DataField="feedback" HeaderText="Feedback" SortExpression="feedback" />
                </Columns>
            </asp:GridView>
        </div>
    </form>

    <!-- Include Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
