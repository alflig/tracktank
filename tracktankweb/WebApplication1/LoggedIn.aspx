<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoggedIn.aspx.cs" Inherits="WebApplication1.LoggedIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>
    <title>Home</title>
</head>
<body>
<header>
        <script src="JavaScript1.js"></script>
        <div class="menu-toggle" id="hamburger">
            <i class="fas fa-bars"></i>
        </div>
        <div class="overlay"></div>
        <div class="container">
            <nav>
                <h1 class="brand"><a href="LoggedIn.aspx">Track<span>Tank</span></a></h1>
                <ul>
                    <li><a href="LoggedIn.aspx">Home</a></li>
                    <li><a href="registerAlbum.aspx">Services</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>
        </div>
 </header>
       
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
