<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerArtist.aspx.cs" Inherits="WebApplication1.registerArtist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>artist registration</title>
      
</head>
<body>
    <p>This is the registration page</p>
    <a href="Default.aspx">Home</a> | <a href="Default.aspx">Register</a>
    <form id="form2" runat="server">
        <div>
            

            <p>Enter artist name</p>
            <asp:TextBox ID="artistName" Text="" runat="server" />
            <p>Country</p>
            <asp:TextBox ID="artistCountry" Text="" runat="server" /> 
            <p>age</p>
            <asp:TextBox ID="age" Text="" runat="server" />
            <p>bio (Maximum 250 words)</p>
            <asp:TextBox ID="bio" Text="" runat="server" Height="178px" Width="516px" />
            
            <p>Career start</p>
           <asp:TextBox ID="careerStart" Text="" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Show Calender" OnClick="Button1_Click"  />
           <asp:Calendar ID="calendar1" OnSelectionChanged="calendar1_SelectionChanged" runat="server" Height="220px" Width="400px" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" NextPrevFormat="FullMonth" TitleFormat="Month">
               <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
               <DayStyle Width="14%" />
               <NextPrevStyle Font-Size="8pt" ForeColor="White" />
               <OtherMonthDayStyle ForeColor="#999999" />
               <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
               <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
               <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
               <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
            




            <p>Career end</p>
            <asp:TextBox ID="end" runat="server"></asp:TextBox>
             <asp:Calendar ID="calendar2" OnSelectionChanged="calendar2_SelectionChanged" runat="server" Height="220px" Width="400px" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" NextPrevFormat="FullMonth" TitleFormat="Month">
               <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
               <DayStyle Width="14%" />
               <NextPrevStyle Font-Size="8pt" ForeColor="White" />
               <OtherMonthDayStyle ForeColor="#999999" />
               <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
               <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
               <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
               <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>

            <br />
            

            
            <asp:Button ID="registerButton" Text="REGISTER" runat="server" OnClick="RegisterEventMethod" />
        </div>
    </form>
</body>
</html>

