<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserMain.aspx.cs" Inherits="Library1.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Wrapper">
        <h3>Customer Management</h3>
        <br />
        <div  class ="col-xs-3" >
               <p><asp:Label ID="lblGetUser" runat="server" Text="Search For User By Name"></asp:Label></p><br />
               <p><asp:Label ID="lblSearchBookName" runat="server" Text="Search For Book By Name"></asp:Label></p>
        </div>
        <div  class ="col-xs-9" >
            <div>
                <b>:</b> <asp:TextBox ID="txtGetUser" runat="server" ToolTip="Enter User's Name"></asp:TextBox>
                <asp:Button ID="btnGetUser" class="round-button" runat="server" Text="Find User" OnClick="btnGetUser_Click" />
            </div><br />
            <div>
                <b>:</b> <asp:TextBox ID="txtSearchBookName" runat="server" ToolTip="Enter book's Name"></asp:TextBox>
                <asp:Button ID="btnSearchBookNAme" class="round-button" runat="server" Text="Find Book" OnClick="btnSearchBookNAme_Click" />
            <br />
            </div>
        </div><br />
        <hr />
        <div class ="col-xs-12">
            <asp:GridView ID="GridView1"  runat="server" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" BorderStyle="Solid">
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
          
        </div>
        <hr style="background-color:#C0C0C0"/>
       
            <asp:Button ID="btnBookOccupation" class="round-button" runat="server" Text="Assign Book" OnClick="btnBookOccupation_Click" />
            <asp:Button ID="btnBookReturning" class="round-button" runat="server" Text="Return Book" OnClick="btnBookReturning_Click" /><br /><br/>
            <asp:Button ID="btnCreateNewUser" class="round-button" runat="server" Text="Add New User" OnClick="btnCreateNewUser_Click" />
            <asp:Button ID="btnUpdateUserInfo" class="round-button" runat="server" Text="User Info Update" OnClick="btnUpdateUserInfo_Click" />
         <hr style="background-color:#C0C0C0"/>
    </div>
      
   
</asp:Content>
