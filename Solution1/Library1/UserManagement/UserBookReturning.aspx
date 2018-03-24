﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserBookReturning.aspx.cs" Inherits="Library1.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="Wrapper">
     <asp:Wizard ID="Wizard1" class="Wizard1" runat="server" CancelDestinationPageUrl="~/UserManagement/UserMain.aspx" DisplayCancelButton="True" DisplaySideBar="False" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" CancelButtonText="Exit" FinishCompleteButtonText="Submit">
                <WizardSteps>

                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                        <h3>Return Book</h3>
                        <asp:Label ID="lblBookID" runat="server" Visible="False" ></asp:Label>
                        <table>
                            <tr>
                                <td>
                                    <strong>
                                         <asp:Label ID="lblReturningBook" runat="server" Text="Returning Book"></asp:Label>
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:TextBox ID="txtReturningBook" runat="server"></asp:TextBox>
                                        <asp:Button ID="btnFindBook" runat="server" Text="Find Book" OnClick="btnFindBook_Click"  />
                                        <asp:RequiredFieldValidator ID="rfvReturnBook" runat="server" ForeColor="Red" ControlToValidate="txtReturningBook" ErrorMessage="Please Enter Book Name" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lblBookISBN" runat="server" Text="Book ISBN"></asp:Label>
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:TextBox ID="txtBookISBN" runat="server" ReadOnly="True"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr><tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lblAuthorNameIs" runat="server" Text="Author Name"></asp:Label>
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:TextBox ID="txtAuthorName" runat="server" ReadOnly="True"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                        </table>
                       <strong> 
                           <asp:Label ID="lblValidateStep1" ForeColor="Red" runat="server" ></asp:Label>
                        </strong>
                    </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                       <h3>Return Book</h3><br/>
                        <asp:Label ID="lblUserID" runat="server" Visible="False" ></asp:Label>
                        <table>
                            <tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lblSearchedUserID" runat="server" Text="Enter User ID"></asp:Label>
                                    </strong>
                                </td>
                                
                                <td>
                                    <strong>
                                        : <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
                                        <asp:Button ID="btnFindUser" runat="server" Text="Find User" OnClick="btnFindUser_Click" />
                                        <asp:RequiredFieldValidator ID="rfvFindUserID" runat="server" ForeColor="Red" ControlToValidate="txtUserID" ErrorMessage="Please Enter User ID" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </strong>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <strong>
                                         <asp:Label ID="lblUserName" runat="server" Text="User Name Is"></asp:Label>
                                    </strong>
                                </td>
                                
                                <td>
                                    <strong>
                                       : <asp:TextBox ID="txtUserName" runat="server" ReadOnly="True"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                             
                        </table>
                        <strong>
                             <asp:Label ID="lblValidateStep2" ForeColor="Red" runat="server" ></asp:Label>
                        </strong>
                       
                    

                    </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 2">
                        <h3>Return Book</h3><br/>
                        <table>
                            <tr>
                                <td>
                                    <strong>
                                        Book
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblReturnedBook" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <strong>
                                        Book ISBN
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblISBN" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr> 
                            <tr>
                                <td>
                                    <strong>
                                        Author Name
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="LblBookAuthor" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <strong>
                                        Users Name
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                       : <asp:Label ID="lblReturningUser" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <strong>
                                        User ID
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblReturningID" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            
                        </table>
                        <strong>
                        <asp:Label ID="lblUserAdded" runat="server" ForeColor="Green" ></asp:Label>
                        </strong>

                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
            <hr  style="background-color:#C0C0C0;"/>
    </div>
</asp:Content>