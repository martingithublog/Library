﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAction.aspx.cs" Inherits="Library1.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                       <h3>Get New Book</h3>
            <br />
            <asp:Label ID="lblSearchBookName" runat="server" Text="Enter Book's Name"></asp:Label>
            <asp:TextBox ID="txtSearchBookName" runat="server" ToolTip="Enter book's Name"></asp:TextBox>
            <asp:Button ID="btnSearchBookNAme" runat="server" Text="Find Book" />
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <br />
            <asp:Button ID="btntakeBook" runat="server"  Text="Occupy This Book" OnClick="btntakeBook_Click" /><asp:Button ID="btnReturnBook" runat="server" Text="Return This Book" OnClick="btnReturnBook_Click" />
                </div>
    </form>
</body>
</html>