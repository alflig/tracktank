<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="browseArtists.aspx.cs" Inherits="WebApplication1.browseArtists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 <asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvImages_SelectedIndexChanged" Width="762px">
     <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField HeaderText="name" DataField="name" />
        <asp:BoundField HeaderText="country" DataField="country" />
        <asp:BoundField HeaderText="age" DataField="age" />
        <asp:BoundField HeaderText="bio" DataField="bio" />
        <asp:BoundField HeaderText="File Name" DataField="FileName" />
        <asp:TemplateField HeaderText = "Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="120" Width="120" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
     <EditRowStyle BackColor="#2461BF" />
     <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
     <RowStyle BackColor="#EFF3FB" />
     <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
     <SortedAscendingCellStyle BackColor="#F5F7FB" />
     <SortedAscendingHeaderStyle BackColor="#6D95E1" />
     <SortedDescendingCellStyle BackColor="#E9EBEF" />
     <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    </form>
</body>
</html>
