<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRLogin.aspx.cs" Inherits="EVisa.HRLogin" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>body {
    background: linear-gradient(to right, #4CAF50, #81C784); /* Gradient from dark green to light green */
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.login-container {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 100%;
}

.login-box {
    background: #ffffff; /* White background for the login box */
    border-radius: 12px; /* Rounded corners */
    box-shadow: 0 4px 8px rgba(0,0,0,0.2); /* Soft shadow */
    width: 350px; /* Slightly wider box */
    padding: 30px; /* More padding for a better layout */
    text-align: center;
    transform: translateY(-20px); /* Slight lift effect */
}

.login-box h2 {
    margin-bottom: 20px;
    color: #4CAF50; /* Green color */
    font-size: 24px; /* Larger font size for the header */
    font-weight: 700; /* Bold font weight */
}

.form-label {
    display: block;
    margin-bottom: 10px;
    color: #333;
    font-weight: 600; /* Slightly bold labels */
}

.form-input {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 8px; /* Rounded input fields */
    font-size: 16px;
    box-sizing: border-box; /* Ensures padding and border are included in the element's total width and height */
}

.form-input:focus {
    border-color: #4CAF50; /* Green border on focus */
    outline: none; /* Removes default outline */
    box-shadow: 0 0 5px rgba(76, 175, 80, 0.5); /* Subtle green shadow on focus */
}

.login-btn {
    width: 100%;
    padding: 12px;
    border: none;
    border-radius: 8px; /* Rounded button */
    background-color: #4CAF50; /* Green button */
    color: white;
    font-size: 18px; /* Larger font size for the button */
    cursor: pointer;
    transition: background-color 0.3s, transform 0.2s; /* Smooth transition for hover effect */
}

.login-btn:hover {
    background-color: #45a049; /* Darker green on hover */
    transform: scale(1.02); /* Slight scale effect on hover */
}

.message-label {
    margin-top: 10px;
    font-size: 14px;
}
</style>
</head>
<body>
    <div class="login-container">
        <div class="login-box">
            <h2>HR Login</h2>
            <form id="loginForm" runat="server">
                <asp:Label ID="lblHID" runat="server" Text="HR ID" AssociatedControlID="txtHRID" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtHRID" runat="server" CssClass="form-input"></asp:TextBox>
                
                <asp:Label ID="lblPassword" runat="server" Text="Password" AssociatedControlID="txtPassword" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input"></asp:TextBox>
                
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-btn" OnClick="btnLogin_Click" />
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server" CssClass="message-label" ForeColor="Red"></asp:Label>
            </form>
        </div>
    </div>
</body>
</html>
