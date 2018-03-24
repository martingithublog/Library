<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Library1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron"  style="background-color:#C0C0C0;">
        <h1>
           Main Menu
        </h1> <br />
        <div>
            <h3>User Management</h3>
            <asp:Button ID="btnUserManagement" class="round-button" runat="server" Text="Go To Users" OnClick="btnUserManagement_Click" />
        </div><div>
            <h3>Book Management</h3>
            <asp:Button ID="btnBookManagmement" class="round-button" runat="server" Text="Go To Books" OnClick="btnBookManagmement_Click" />
        </div><div>
            <h3>Author Management</h3>
            <asp:Button ID="btnAuthorManagement" class="round-button" runat="server" Text="Go To Authors" OnClick="btnAuthorManagement_Click" />
        </div>

      
    </div>

</asp:Content>
