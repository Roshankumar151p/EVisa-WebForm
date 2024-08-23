<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="EVisa.Feedback" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>
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
            width:500px;
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

        .feedback-form {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }

        .feedback-form .input, .feedback-form .textarea {
            width: 100%;
            max-width: 800px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            box-sizing: border-box;
            background-color: #f9f9f9; 
        }

        .feedback-form .textarea {
            height: 150px;
            resize: vertical;
        }

        .feedback-form button {
            background-color: #4CAF50; 
            color: white;
            border: none;
            padding: 15px 30px;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }

        .feedback-form button:hover {
            background-color: #45a049; 
            transform: scale(1.05); 
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
            
            .feedback-form .input, .feedback-form .textarea, .feedback-form button {
                max-width: 100%;
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
                <asp:TextBox ID="txtName" runat="server" CssClass="input" Placeholder="Your Name" />
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input" Placeholder="Your Email" />
                <asp:TextBox ID="txtSubject" runat="server" CssClass="input" Placeholder="Subject" />
                <asp:TextBox ID="txtMessage" runat="server" CssClass="textarea" TextMode="MultiLine" Rows="6" Placeholder="Your Feedback" />
                <asp:Button ID="btnSubmit" runat="server" CssClass="button" Text="Submit Feedback" />
            </div>
            <div class="feedback-list">
                <asp:Repeater ID="rptFeedback" runat="server">
                    <ItemTemplate>
                        <div class="feedback-item">
                            <h3><%# Eval("Subject") %></h3>
                            <p><strong>Name:</strong> <%# Eval("Name") %></p>
                            <p><strong>Email:</strong> <%# Eval("Email") %></p>
                            <p><strong>Message:</strong> <%# Eval("Message") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</body>
</html>

