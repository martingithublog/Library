<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookMain.aspx.cs" Inherits="Library1.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Wrapper" >
        <h3>Book Management</h3><br />
        <table>
            <tr>
                <th colspan="2"><p>Search Books By</p></th>
            </tr>
            <tr>
                <td>
                    <Strong>
                        Book Name
                    </Strong><br />
                </td>
                 <td>
                    <strong>:</strong><asp:TextBox ID="txtBookName" runat="server" ToolTip="Enter Book's Name"></asp:TextBox>
                    <asp:Button ID="btnBookNameSearch" class="round-button" runat="server" Text="Find Book" OnClick="btnBookNameSearch_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <strong>
                        Book ISBN
                    </strong>
                </td>
                 <td>
                    <strong>:</strong><asp:TextBox ID="txtBookISBN" runat="server" ToolTip="Enter Book's ISBN"></asp:TextBox>
                    <asp:Button ID="btnBookISBNSearch" class="round-button" runat="server" Text="Find Book" OnClick="btnBookISBNSearch_Click" />
                </td>
            </tr><tr>
                <td>
                    <strong>
                        Book Author
                    </strong>
                </td>
                 <td>
                    <strong>:</strong><asp:TextBox ID="txtBookAuthor" runat="server" ToolTip="Enter Book's Author"></asp:TextBox>
                    <asp:Button ID="btnBookAuthorSearch" class="round-button" runat="server" Text="Find Book" OnClick="btnBookAuthorSearch_Click" /><br />
                </td>
            </table><br />

            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" BorderStyle="Solid" GridLines="Vertical" ForeColor="Black">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="#383838" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
                <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
         <hr style="background-color:#C0C0C0"/>
    
        <asp:Button ID="Button1" class="round-button" runat="server" Text="Add New Book" OnClick="Button1_Click" />
        <asp:Button ID="Button2" class="round-button" runat="server" Text="Update Book" OnClick="Button2_Click" /><br /><br>
         <hr style="background-color:#C0C0C0"/>
 </div>
</asp:Content>
