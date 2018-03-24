<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserBookReturning.aspx.cs" Inherits="Library1.UserBookReturning" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUserID" runat="server" Text="Enter User ID"></asp:Label>
            <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            <asp:Button ID="btnFindUser" runat="server" Text="Find User" />
            <br />
            <br />
            <asp:Label ID="ibiUserName" runat="server" Text="User Name Is"></asp:Label>
            <asp:TextBox ID="txtUserName" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblReturningBook" runat="server" Text="Returning Book"></asp:Label>
            <asp:TextBox ID="txtReturningBook" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnReturnBook" runat="server" Text="Return Book" OnClick="btnReturnBook_Click"  />
            <asp:Button ID="btnCancelReturning" runat="server" Text="Return More Books"  OnClientClick="return confirm('Are You Sure You Want To Leave This Page');" OnClick="btnCancelReturning_Click"/>


            <br />
            <asp:Label ID="lblReturningSuccessful" ForeColor="Green" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
