<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoggedIn.aspx.cs" Inherits="WebApplication1.LoggedIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logged In</title>
</head>
<body>
    <p>This is the logged in page</p>
    <form id="form1" runat="server">
        <div>
            <p>Welcome</p>
            <asp:Label ID="userLabel" Text ="No User" runat="server" />
            <br />
            <asp:Button ID="logoutButton" Text ="Log out" runat="server" onClick ="logoutEventMethod"/>
        </div>
    </form>
</body>
</html>
