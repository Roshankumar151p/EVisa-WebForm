<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VisaStatus.aspx.cs" Inherits="EVisa.VisaStatus" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visa Status</title>
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
            max-width: 1000px;
            width: 100%;
        }

        .card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            padding: 20px;
            text-align: center;
            box-sizing: border-box;
        }

        .card h2 {
            margin-top: 0;
            color: #43a047;
        }

        .table-container {
            width: 100%;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #43a047;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="title">Visa Status</div>
        </div>
        <div class="card-container">
            <div class="card">
                <h2>Employee Visa Status</h2>
                <div class="table-container">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="VisaID" HeaderText="Visa ID" />
                            <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" />
                            <asp:BoundField DataField="VisaType" HeaderText="Visa Type" />
                            <asp:BoundField DataField="VisaExpiry" HeaderText="Visa Expiry Date" DataFormatString="{0:yyyy-MM-dd}" />
                            <asp:BoundField DataField="RenewalRequested" HeaderText="Renewal Requested" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

