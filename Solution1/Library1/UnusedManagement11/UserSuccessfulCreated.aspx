<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSuccessfulCreated.aspx.cs" Inherits="Library1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>The User Has Been Successfully Created</h3><br/>
            <b>UsersName: </b>
            <asp:Label ID="lblSuccessName" runat="server" ></asp:Label><br />
            <b>Users EGN: </b> 
            <asp:Label ID="lblSuccessEGN" runat="server" ></asp:Label><br />
            <b>Users Address: </b>
            <asp:Label ID="lblSuccessAddress" runat="server" ></asp:Label><br />
            <b>Users Phone: </b>
            <asp:Label ID="lblSuccessPhone" runat="server" ></asp:Label><br />
            <b>Users Email: </b>
            <asp:Label ID="lblSuccessEmail" runat="server" ></asp:Label><br />
            <br />
    
            <asp:Button ID="btnAddAnotherCostumer" runat="server" Text="Add Another Customer" OnClick="btnAddAnotherCostumer_Click" />
 
            <input id="btnFinishAdding1" type="button"  value="Exit This Form" onclick="alert('Are You Sure You Want To Leave This Page!'); window.close();" />
        </div>
    </form>
</body>
</html>
