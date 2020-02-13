<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerAlbum.aspx.cs" Inherits="WebApplication1.registerAlbum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <p>Choose artist</p>
          <asp:DropDownList ID = "artists" runat="server">
</asp:DropDownList>
            
            
            <p>Album label</p>
            <asp:TextBox ID="albumName" Text="" runat="server" />
            
            <p>Number of tracks</p>
            <asp:TextBox ID="numberOfTracks" Text="" runat="server" /> 
           
            
            <p>Release Year</p>
            <asp:TextBox ID="releaseYear" runat="server"></asp:TextBox>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
           
           

            <asp:Button ID="registerButton" Text="REGISTER" runat="server" OnClick="RegisterEventMethod" />
        </div>
    </form>
</body>
</html>
