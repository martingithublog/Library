<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersUpdateInfo.aspx.cs" Inherits="Library1.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h3>User Info Update </h3>

    <asp:Label ID="lvlUserID" runat="server" Text="UserID"></asp:Label>  
    <asp:TextBox ID="txtUserID" runat="server" ToolTip="Enter ID" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="rvfID"
            ControlToValidate ="txtUserID" runat="server" ForeColor="Red" ErrorMessage="Please Enter Valid ID">
          </asp:RequiredFieldValidator>
    <asp:Button ID="SearchUser" runat="server" Text="Find User" /><br /><br />


     <asp:Label ID="lblNewUserName" runat="server" Text="First & Last Names"></asp:Label>     
    <asp:TextBox ID="txtNewUserName" runat="server" ToolTip="Enter First and Last Name" ></asp:TextBox>
    <%--<asp:RequiredFieldValidator ID="rfvNewUserName"
            ControlToValidate ="txtNewUserName" runat="server" ForeColor="Red" ErrorMessage="Please Enter Your First and Last Names">
          </asp:RequiredFieldValidator>--%><br /><br />

   
    <asp:Label ID="lblEGN" runat="server" Text="EGN"></asp:Label>
    <asp:TextBox ID="txtEGN" runat="server" ToolTip="Enter Your EGN"></asp:TextBox>
    <%--<asp:RequiredFieldValidator ID="rfvEGN"
            ControlToValidate ="txtEGN" runat="server" ForeColor="Red" ErrorMessage="Please Enter Correct EGN" Display="Dynamic"></asp:RequiredFieldValidator>--%>
    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
       ControlToValidate ="txtEGN" runat="server" ErrorMessage="Please Enter Correct 10 Digits EGN" ForeColor="Red" Display="Dynamic" ValidationExpression="\d{17}[\d|X]|\d{10}"></asp:RegularExpressionValidator>--%>
    <br /><br />

    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
    <asp:TextBox ID="txtAddress" runat="server" ToolTip="Enter Your Address"></asp:TextBox>
    <%--<asp:RequiredFieldValidator ID="rfvAddress"
            ControlToValidate ="txtAddress" runat="server" ForeColor="Red" ErrorMessage="Please Enter Correct Address">
    </asp:RequiredFieldValidator>--%><br /><br />


    <asp:Label ID="lvlPhone" runat="server" Text="Phone Number"></asp:Label>
    <asp:TextBox ID="txtPhone" runat="server" ToolTip="Enter Your Phone Number"></asp:TextBox>
    <%--<asp:RequiredFieldValidator ID="rfvPhone"
            ControlToValidate ="txtPhone" runat="server" ForeColor="Red" ErrorMessage="Please Enter Correct Phone Number">
    </asp:RequiredFieldValidator>--%><br /><br />


    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" ToolTip="Enter Your Email"></asp:TextBox>
    <%--<asp:RequiredFieldValidator ID="rfvEmail"
            ControlToValidate ="txtEmail" runat="server" ForeColor="Red" ErrorMessage="Please Enter Correct Email" Display="Dynamic"></asp:RequiredFieldValidator>--%>
    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1"
        ControlToValidate ="txtEmail" runat="server" ErrorMessage="Please Enter Correct Email" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
    </asp:RegularExpressionValidator>--%>
    <br /><br />

    <asp:Button ID="btnUserCreating" runat="server" Text="Update Users Info" OnClick="btnUserCreating_Click" /><input id="btnFinishUpdating" type="button"  value="Exit This Form" onclick="alert('Are You Sure You Want To Leave This Page!'); window.close();" /><br /><br />
        
    <asp:Label ID="lblUserSuccessfulyUpdated" forecolor="Green" runat="server" ></asp:Label>

        </div>
    </form>
</body>
</html>
