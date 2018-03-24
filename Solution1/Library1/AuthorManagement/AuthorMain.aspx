<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AuthorMain.aspx.cs" Inherits="Library1.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Wrapper">
        <h3>Authors Management</h3>
        <br />

        <h4><b>Search For Author</b></h4>
        <br />

        <asp:Label ID="lblAN" runat="server" Text="<b>Athor's Name : <b/>"></asp:Label><asp:TextBox ID="txtAuthorName" runat="server" ToolTip="Enter Author's Name" ></asp:TextBox>

        <asp:Button ID="btnAuthorNameSearch" class="round-button" runat="server" Text="Find Author" OnClick="btnAuthorNameSearch_Click"  />
        <br /><br />

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
        </asp:GridView> <br />
        <hr style="background-color:#C0C0C0;"/>

        <asp:Button ID="btnAddNewAuthor" class="round-button" runat="server" Text="Add New Author" OnClick="btnAddNewAuthor_Click" />
        <asp:Button ID="btnUpdateAuthor" class="round-button" runat="server" Text="Update Author" OnClick="btnUpdateAuthor_Click" />
         <hr style="background-color:#C0C0C0"/>
    </div>

</asp:Content>
