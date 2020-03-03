<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerAlbum.aspx.cs" Inherits="WebApplication1.registerAlbum" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css"/>
    <title>Register album</title>
</head>
<body>
    <div class="header">
          <svg viewBox="0 0 1500 300"> 
    <symbol id="s-text">
        <text text-anchor="middle" x="50%" y="80%">Register album</text>
    </symbol>

    <g class = "g-ants">
        <use xlink:href="#s-text" class="text-copy"></use>
        <use xlink:href="#s-text" class="text-copy"></use>
        <use xlink:href="#s-text" class="text-copy"></use>
        <use xlink:href="#s-text" class="text-copy"></use>
        <use xlink:href="#s-text" class="text-copy"></use>
    </g>
</svg>
    </div>
    <form id="form1" runat="server">
     
            
            <p>Choose artist</p>
          <asp:DropDownList ID = "artists" runat="server" Height="30px" Width="300px" BackColor="#FFFFCC">
           </asp:DropDownList>
            
            
            <p>Album label</p>
            <asp:TextBox ID="albumName" Text="" runat="server" BackColor="#FFFFCC" Height="30px" Width="300px" />
            
            <p>Number of tracks</p>
            <asp:TextBox ID="numberOfTracks" Text="" runat="server" BackColor="#FFFFCC" Height="30px" Width="300px" /> 
           
            
            <p>Release Year</p>
            <asp:TextBox ID="releaseYear" runat="server" BackColor="#FFFFCC" Height="30px" Width="300px" />
            <br />
            <br />
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Height="237px" Width="418px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
           
           
            <br />
            <br />
            <asp:Button ID="registerButton" Text="REGISTER" runat="server" OnClick="RegisterEventMethod" BackColor="#FFFFCC" Font-Bold="True" Font-Italic="False" Font-Overline="False" Height="52px" style="margin-left: 0px; margin-right: 0px;" Width="155px" ForeColor="#663399" />
       
    </form>
</body>
</html>
