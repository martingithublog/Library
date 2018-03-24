<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserBookReturning1.aspx.cs" Inherits="Library1.WebForm17" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Wizard ID="Wizard1" runat="server" CancelDestinationPageUrl="~/UserManagement/UserMain.aspx" DisplayCancelButton="True" DisplaySideBar="False" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" CancelButtonText="Exit" FinishCompleteButtonText="Submit">
                <WizardSteps>

                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                        <h3>Return Book</h3>

                        <asp:Label ID="lblBookID" runat="server" Visible="False" ></asp:Label>

                        <asp:Label ID="lblReturningBook" runat="server" Text="Returning Book : "></asp:Label>
                        <asp:TextBox ID="txtReturningBook" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvReturnBook" runat="server" ForeColor="Red" ControlToValidate="txtReturningBook" ErrorMessage="Please Enter Book Name" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:Button ID="btnFindBook" runat="server" Text="Find Book" OnClick="btnFindBook_Click"  />
                        <br />
                        <br />
                        <asp:Label ID="lblBookISBN" runat="server" Text="Book ISBN : "></asp:Label>
                        <asp:TextBox ID="txtBookISBN" runat="server" ReadOnly="True"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="lblAuthorNameIs" runat="server" Text="Author ID : "></asp:Label>
                        <asp:TextBox ID="txtAuthorName" runat="server" ReadOnly="True"></asp:TextBox>
                        <br /><br />

                        <asp:Label ID="lblValidateStep1" ForeColor="Red" runat="server" ></asp:Label>
                        <br /><br />

                    </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        
                        <h3>Return Book</h3><br/>

                        <asp:Label ID="lblUserID" runat="server" Visible="False" ></asp:Label>

                        <asp:Label ID="lblSearchedUserID" runat="server" Text="Enter User ID"></asp:Label>
                        <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFindUserID" runat="server" ForeColor="Red" ControlToValidate="txtUserID" ErrorMessage="Please Enter User ID" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:Button ID="btnFindUser" runat="server" Text="Find User" OnClick="btnFindUser_Click" />
                        <br /><br />

                        <asp:Label ID="ibiUserName" runat="server" Text="User Name Is"></asp:Label>
                        <asp:TextBox ID="txtUserName" runat="server" ReadOnly="True"></asp:TextBox>
                        <br /> <br />

                        <asp:Label ID="lblValidateStep2" ForeColor="Red" runat="server" ></asp:Label>
                    

                    </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 2">
                        
                        <h3>Return Book</h3><br/>
                        <b>Book : </b>
                        <asp:Label ID="lblReturnedBook" runat="server" ></asp:Label><br />
                        <b>Book ISBN : </b>
                        <asp:Label ID="lblISBN" runat="server" ></asp:Label><br />
                        <b>Author : </b>
                        <asp:Label ID="LblBookAuthor" runat="server" ></asp:Label><br />
                        <b>User ID : </b>
                        <asp:Label ID="lblReturningID" runat="server" ></asp:Label><br />
                        <b>Users Name : </b> 
                        <asp:Label ID="lblReturningUser" runat="server" ></asp:Label><br />
                        <br />
                        <asp:Label ID="lblUserAdded" runat="server" ForeColor="Green" ></asp:Label>

                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>


        </div>
    </form>
</body>
</html>
