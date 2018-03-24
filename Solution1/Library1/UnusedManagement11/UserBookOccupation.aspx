<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserBookOccupation.aspx.cs" Inherits="Library1.WebForm4" %>

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
            <asp:Label ID="lblAssignBook" runat="server" Text="Assign Book"></asp:Label>
            <asp:TextBox ID="txtAssignBook" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnAssignBook" runat="server" Text="Assign Book" OnClick="btnAssignBook_Click" />
            <asp:Button ID="btnCancelAssigning" runat="server"  Text="Get More Books "  OnClick="btnCancelAssigning_Click" OnClientClick="return confirm('Are You Sure You Want To Leave This Page');"/>
            <br />
            <asp:Label ID="lblAssigningSuccessful" ForeColor="Green" runat="server" Text=""></asp:Label>


        </div>
    </form>
</body>
</html>
