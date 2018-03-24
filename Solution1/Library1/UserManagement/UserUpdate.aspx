<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserUpdate.aspx.cs" Inherits="Library1.WebForm25" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Wrapper">
         <h3>Update User's Info</h3>

        <asp:Wizard ID="Wizard1" class="Wizard1" runat="server" CancelDestinationPageUrl="~/UserManagement/UserMain.aspx" DisplayCancelButton="True" DisplaySideBar="False" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" CancelButtonText="Exit" FinishCompleteButtonText="Submit">
                <WizardSteps>
                        <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                            <asp:Label ID="lblSaveUserID" runat="server" Visible ="false" ></asp:Label>
                        <table>
                            <tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lvlUserID" runat="server" Text="UserID"></asp:Label>
                                    </strong>
                                </td>
                                    <td>
                                    <strong>
                                        : <asp:TextBox ID="txtUpdateUserID" runat="server" ToolTip="Enter ID"  ></asp:TextBox>
                                        <asp:Button ID="SearchUser" runat="server" Text="Find User" OnClick="SearchUser_Click" />
                                        <asp:RequiredFieldValidator ID="rvfID" ControlToValidate ="txtUpdateUserID" runat="server" ForeColor="Red" ErrorMessage="Please Enter Valid ID" Display="Dynamic"></asp:RequiredFieldValidator>
                                            
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lblUserName" runat="server" Text="First & Last Names"></asp:Label>  
                                    </strong>
                                </td>
                                    <td>
                                    <strong>
                                        : <asp:TextBox ID="txtUpdateUserName" runat="server" ToolTip="Enter First and Last Name" ></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lblEGN" runat="server" Text="EGN"></asp:Label>
                                    </strong>
                                </td>
                                    <td>
                                    <strong>
                                        : <asp:TextBox ID="txtUpdateEGN" runat="server" ToolTip="Enter Your EGN"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                                    </strong>
                                </td>
                                    <td>
                                    <strong>
                                        : <asp:TextBox ID="txtUpdateAddress" runat="server" ToolTip="Enter Your Address"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        <asp:Label ID="lvlPhone" runat="server" Text="Phone Number"></asp:Label>
                                    </strong>
                                </td>
                                    <td>
                                    <strong>
                                        : <asp:TextBox ID="txtUpdatePhone" runat="server" ToolTip="Enter Your Phone Number"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                                <tr>
                                <td>
                                    <strong>
                                            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                                    </strong>
                                </td>
                                    <td>
                                    <strong>
                                        : <asp:TextBox ID="txtUpdateEmail" runat="server" ToolTip="Enter Your Email"></asp:TextBox>
                                    </strong>
                                </td>
                            </tr>
                        </table>
                        <strong>
                            <asp:Label ID="lblValidateStep1" ForeColor="Red" runat="server" ></asp:Label>
                        </strong>
                            
                          
                    </asp:WizardStep>
                        


                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <h3>User's Info Preview</h3><br/>
                        <table>
                            <tr>
                                <td>
                                    <strong>
                                        User ID
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblUserID" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        User Name
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblUpdateName" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        Users EGN
                                    </strong>
                                </td>
                                    <td>
                                    <strong>
                                        :<asp:Label ID="lblUpdateEGN" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                                </tr>
                            <tr>
                                <td>
                                    <strong>
                                        Users Address
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblUpdateAddress" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                                </tr>
                            <tr>
                                <td>
                                    <strong>
                                        Users Phone
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblUpdatePhone" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        Users Email
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblUpdateEmail" runat="server" ></asp:Label>
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
        <hr style="background-color:#C0C0C0"/>
    </div>
</asp:Content>
