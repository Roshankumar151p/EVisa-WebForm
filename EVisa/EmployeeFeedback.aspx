<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeFeedback.aspx.cs" Inherits="EVisa.EmployeeFeedback" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>
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
            width: 500px;
            border-radius: 12px; 
            box-shadow: 0 8px 16px rgba(0,0,0,0.2); 
            padding: 30px;
            box-sizing: border-box;
        }

        .form-group {   margin-bottom: 0rem; }

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

        .feedback-form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .feedback-form .form-control {
            width: 100%;
            max-width: 800px;
            border-radius: 8px;
            box-sizing: border-box;
            background-color: #f9f9f9;
        }

        .feedback-list {
            margin-top: 30px;
            text-align: left;
        }

        .feedback-item {
            background: #ffffff; 
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .feedback-item h3 {
            margin: 0 0 10px;
            font-size: 20px;
            color: #333;
        }

        .feedback-item p {
            margin: 0;
            color: #555;
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
    <form id="feedbackForm" runat="server">
        <div class="container">
            <div class="header">
                <asp:Label ID="lblTitle" runat="server" CssClass="title" Text="Feedback Form"></asp:Label>
            </div>
            <div class="feedback-form">
                <div class="form-group">
                    <label for="txtEmployeeID">Employee ID</label>
                    <asp:TextBox ID="txtEmployeeID" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="txtName">Your Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="txtEmail">Your Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="txtSubject">Subject</label>
                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="txtMessage">Your Feedback</label>
                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="6" OnTextChanged="txtMessage_TextChanged" />
                </div>
                <div class="form-group text-center">
                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success btn-lg" Text="Submit Feedback" OnClick="btnSubmit_Click" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
            </div>
            <div class="feedback-list">
                <asp:Repeater ID="rptFeedback" runat="server">
                    <ItemTemplate>
                        <div class="feedback-item">
                            <h3><%# Eval("Subject") %></h3>
                            <p><strong>Name:</strong> <%# Eval("Name") %></p>
                            <p><strong>Email:</strong> <%# Eval("Email") %></p>
                            <p><strong>Employee ID or HR ID:</strong> <%# Eval("EmployeeHRID") %></p>
                            <p><strong>Message:</strong> <%# Eval("Message") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

