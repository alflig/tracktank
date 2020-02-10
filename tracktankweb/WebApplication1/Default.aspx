<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
</head>
<body>
    <p>This is the home page</p>
    <a href="Default.aspx">Home</a> | <a href="Register.aspx">Register</a>
    <form id="form1" runat="server">
        <div>
            <p>Enter Username</p>
            <asp:TextBox ID="usernameTextBox" Text="Enter user name here" runat="server" />
            <p>Enter Password</p>
            <asp:TextBox ID="passwordTextBox" Text="Enter password here" runat="server" />
            <br />
            <asp:Button ID="SubmitButton" Text="Login" runat="server" OnClick="SubmitEventMethod" />
        </div>
    </form>
</body>
</html>
