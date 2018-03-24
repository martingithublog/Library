<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserCreate.aspx.cs" Inherits="Library1.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="Wrapper"  >
        <h3>Add New User</h3><br />

         <asp:Wizard ID="Wizard1" class="Wizard1" runat="server" CancelDestinationPageUrl="~/UserManagement/UserMain.aspx" DisplayCancelButton="True" DisplaySideBar="False" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" CancelButtonText="Exit" FinishCompleteButtonText="Submit">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                    <table>
                        <tr>
                            <td>
                                <strong>
                                    <asp:Label ID="lblNewUserName" runat="server" Text="First & Last Names"></asp:Label>
                                </strong>
                            </td>
                            <td>
                                <strong>
                                 : <asp:TextBox ID="txtNewUserName" runat="server" ToolTip="Enter First and Last Name" ></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="rfvNewUserName" ControlToValidate ="txtNewUserName" runat="server" ForeColor="Red" ErrorMessage="Please Enter Your First and Last Names"></asp:RequiredFieldValidator>
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
                                    : <asp:TextBox ID="txtEGN" runat="server" ToolTip="Enter Your EGN"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEGN" ControlToValidate ="txtEGN" runat="server" ForeColor="Red" ErrorMessage="Please Enter Correct EGN" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate ="txtEGN" runat="server" ErrorMessage="Please Enter Correct 10 Digits EGN" ForeColor="Red" Display="Dynamic" ValidationExpression="\d{17}[\d|X]|\d{10}"></asp:RegularExpressionValidator>
               
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
                                    : <asp:TextBox ID="txtAddress" runat="server" ToolTip="Enter Your Address"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvAddress" ControlToValidate ="txtAddress" runat="server" ForeColor="Red" ErrorMessage="Please Enter Correct Address"></asp:RequiredFieldValidator>
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
                                    : <asp:TextBox ID="txtPhone" runat="server" ToolTip="Enter Your Phone Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPhone" ControlToValidate ="txtPhone" runat="server" ForeColor="Red" ErrorMessage="Please Enter Correct Phone Number"></asp:RequiredFieldValidator>
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
                                    : <asp:TextBox ID="txtEmail" runat="server" ToolTip="Enter Your Email"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate ="txtEmail" runat="server" ErrorMessage="Please Enter Correct Email" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </strong>
                            </td>
                        </tr>
                    </table>
                    <strong>
                        <asp:Label ID="lblValidateStep1" ForeColor="Red" runat="server" ></asp:Label>
                    </strong>
                
                </asp:WizardStep>


                <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                    <h3>Confirmation Page</h3><br/>

                    <table>
                        <tr>
                            <td>
                                <strong>
                                    User Name
                                </strong>
                            </td>
                            <td>
                                <strong>
                                    : <asp:Label ID="lblSuccessName" runat="server" ></asp:Label>
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
                                    : <asp:Label ID="lblSuccessEGN" runat="server" ></asp:Label>
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
                                    : <asp:Label ID="lblSuccessAddress" runat="server" ></asp:Label>
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
                                    : <asp:Label ID="lblSuccessPhone" runat="server" ></asp:Label>
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
                                    :<asp:Label ID="lblSuccessEmail" runat="server" ></asp:Label>
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
