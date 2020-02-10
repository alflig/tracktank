﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
</head>
<body>
    <p>This is the registration page</p>
    <a href="Default.aspx">Home</a> | <a href="Default.aspx">Register</a>
    <form id="form1" runat="server">
        <div>
            <p>Enter username</p>
            <asp:TextBox ID="usernameTextBox" Text="" runat="server" />
            <p>Enter password</p>
            <asp:TextBox ID="passwordTextBox" Text="" runat="server" />
            <asp:Button ID="registerButton" Text="REGISTER" runat="server" OnClick="RegisterEventMethod" />
        </div>
    </form>
</body>
</html>
