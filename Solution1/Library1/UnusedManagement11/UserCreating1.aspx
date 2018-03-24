<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserCreating1.aspx.cs" Inherits="Library1.WebForm13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="Wizard1" runat="server" CancelDestinationPageUrl="~/UserManagement/UserMain.aspx" DisplayCancelButton="True" DisplaySideBar="False" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" CancelButtonText="Exit" FinishCompleteButtonText="Submit">
                <FinishNavigationTemplate>
                    <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Submit" />
                    <asp:Button ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Exit" />
                </FinishNavigationTemplate>
                <StartNavigationTemplate>
                    <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                    <asp:Button ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Exit" />
                </StartNavigationTemplate>
                <StepNavigationTemplate>
                    <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                    <asp:Button ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Exit" />
                </StepNavigationTemplate>
                <WizardSteps>

                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">

                        <h3>Adding New User</h3>


                        <asp:Label
                            ID="lblNewUserName" 
                            runat="server" 
                            Text="First & Last Names : ">
                        </asp:Label>
                        <asp:TextBox 
                            ID="txtNewUserName" 
                            runat="server" 
                            ToolTip="Enter First and Last Name" >
                        </asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvNewUserName"
                            ControlToValidate ="txtNewUserName"
                            runat="server" 
                            ForeColor="Red" 
                            ErrorMessage="Please Enter Your First and Last Names">
                        </asp:RequiredFieldValidator>
                        <br /><br />
                        
                        <asp:Label 
                            ID="lblEGN" 
                            runat="server" 
                            Text="EGN : ">
                        </asp:Label>
                        <asp:TextBox 
                            ID="txtEGN"
                            runat="server"
                            ToolTip="Enter Your EGN">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvEGN"
                            ControlToValidate ="txtEGN" 
                            runat="server" ForeColor="Red" 
                            ErrorMessage="Please Enter Correct EGN" 
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator
                            ID="RegularExpressionValidator2" 
                            ControlToValidate ="txtEGN"
                            runat="server"
                            ErrorMessage="Please Enter Correct 10 Digits EGN" 
                            ForeColor="Red" Display="Dynamic"
                            ValidationExpression="\d{17}[\d|X]|\d{10}">
                        </asp:RegularExpressionValidator>
                        <br /><br />

                        <asp:Label 
                            ID="lblAddress"
                            runat="server"
                            Text="Address : ">
                        </asp:Label>
                        <asp:TextBox
                            ID="txtAddress" 
                            runat="server" 
                            ToolTip="Enter Your Address">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvAddress"
                            ControlToValidate ="txtAddress" 
                            runat="server" 
                            ForeColor="Red"
                            ErrorMessage="Please Enter Correct Address">
                        </asp:RequiredFieldValidator>
                        <br /><br />

                        <asp:Label 
                            ID="lvlPhone" 
                            runat="server"
                            Text="Phone Number : ">
                        </asp:Label>
                        <asp:TextBox ID="txtPhone"
                            runat="server"
                            ToolTip="Enter Your Phone Number">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvPhone"
                            ControlToValidate ="txtPhone" 
                            runat="server" ForeColor="Red"
                            ErrorMessage="Please Enter Correct Phone Number">
                        </asp:RequiredFieldValidator>
                        <br /><br />


                        <asp:Label 
                            ID="lblEmail" 
                            runat="server" 
                            Text="Email : ">
                        </asp:Label>
                        <asp:TextBox
                            ID="txtEmail"
                            runat="server" 
                            ToolTip="Enter Your Email">
                        </asp:TextBox>
                        <asp:RegularExpressionValidator 
                            ID="RegularExpressionValidator1"
                            ControlToValidate ="txtEmail"
                            runat="server" 
                            ErrorMessage="Please Enter Correct Email"
                            Display="Dynamic" ForeColor="Red"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>
                        <br /><br />

                        <asp:Label 
                            ID="lblValidateStep1" 
                            ForeColor="Red" 
                            runat="server" >
                        </asp:Label>
                        <br /><br />

                    </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <h3>The User Has Been Successfully Created</h3><br/>

                        <b>UsersName : </b>
                        <asp:Label 
                            ID="lblSuccessName"
                            runat="server" >
                        </asp:Label><br />

                        <b>Users EGN : </b> 
                        <asp:Label 
                            ID="lblSuccessEGN" 
                            runat="server" >
                        </asp:Label><br />

                        <b>Users Address : </b>
                        <asp:Label
                            ID="lblSuccessAddress"
                            runat="server" >
                        </asp:Label><br />

                        <b>Users Phone : </b>
                        <asp:Label 
                            ID="lblSuccessPhone" 
                            runat="server" >
                        </asp:Label><br />

                        <b>Users Email : </b>
                        <asp:Label
                            ID="lblSuccessEmail" 
                            runat="server" >
                        </asp:Label><br />
                        <br />
                        
                        <asp:Label 
                            ID="lblUserAdded" 
                            runat="server"
                            ForeColor="Green" >
                        </asp:Label>
                        <br /><br />
                    </asp:WizardStep>


                </WizardSteps>
            </asp:Wizard>

        </div>
    </form>
</body>
</html>
