<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="EVisa.ViewEmployee" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details</title>
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

        form {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto; /* Center form horizontally */
            padding: 20px;
            box-sizing: border-box;
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

        .gridview-container {
            background: #ffffff; /* White background for the grid container */
            border-radius: 12px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0,0,0,0.2); /* Soft shadow */
            padding: 20px;
            width: 100%;
            overflow-x: auto; /* Horizontal scroll for large tables */
        }

        .gridview-header {
            font-size: 24px;
            color: #4CAF50; /* Green color for the header */
            margin-bottom: 20px;
        }

        .gridview {
            width: 100%;
            border-collapse: collapse;
        }

        .gridview th, .gridview td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        .gridview th {
            background-color: #4CAF50; /* Green background for headers */
            color: white; /* White text color for headers */
        }

        .gridview tr:nth-child(even) {
            background-color: #f2f2f2; /* Alternate row color */
        }

        .gridview tr:hover {
            background-color: #ddd; /* Hover color */
        }

        /* Pager Styling */
        .gridview .pager {
            background-color: #4CAF50; /* Match theme color */
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <asp:Label ID="lblTitle" runat="server" CssClass="title" Text="Employee Details"></asp:Label>
        </div>
        <div class="gridview-container">
            <div class="gridview-header">
            </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" CssClass="gridview" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#4CAF50" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#4CAF50" Font-Bold="True" ForeColor="White" />
                <PagerStyle CssClass="pager" BackColor="#4CAF50" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
