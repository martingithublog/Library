<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsersMain.aspx.cs" Inherits="Library1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>   
            
        <h3>
            Customer Management
        </h3>
        <div>
            <br />
            <input id="btnCreateNewUser1" type="button" onclick="window.open('UserCreating.aspx')"   value="Add New User" /><br /><br />
            <input id="btnUpdateUserInfo1" type="button" onclick="window.open('UsersUpdateInfo.aspx')" value="User Info Update" /><br /><br />
            <input id="btnBookOccupation1" type="button" onclick="window.open('UserAction.aspx')" value="Occupation/Return Book" /><br /><br />
            
            
            <br />
        </div>

    </div>
</asp:Content>
