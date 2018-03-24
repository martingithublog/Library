<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserUpdate1.aspx.cs" Inherits="Library1.WebForm14" %>

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

                        <h3>User Info Update </h3>

                        <asp:Label 
                            ID="lvlUserID" 
                            runat="server" 
                            Text="UserID : ">
                        </asp:Label>  
                        <asp:Label 
                            ID="lblSaveUserID" 
                            runat="server" 
                            Visible ="false" >
                        </asp:Label>
                        <asp:TextBox 
                            ID="txtUpdateUserID"
                            runat="server" 
                            ToolTip="Enter ID"  >
                        </asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="rvfID"
                            ControlToValidate ="txtUpdateUserID" 
                            runat="server" ForeColor="Red" 
                            ErrorMessage="Please Enter Valid ID" 
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:Button ID="SearchUser"
                            runat="server"
                            Text="Find User" 
                            OnClick="SearchUser_Click" />
                        <br /><br />


                        <asp:Label ID="lblUserName" runat="server" Text="First & Last Names : "></asp:Label>     
                        <asp:TextBox ID="txtUpdateUserName" runat="server" ToolTip="Enter First and Last Name" ></asp:TextBox>
                        <br /><br /> 

   
                        <asp:Label ID="lblEGN" runat="server" Text="EGN : "></asp:Label>
                        <asp:TextBox ID="txtUpdateEGN" runat="server" ToolTip="Enter Your EGN"></asp:TextBox>
    
                        <br /><br />

                        <asp:Label ID="lblAddress" runat="server" Text="Address : "></asp:Label>
                        <asp:TextBox ID="txtUpdateAddress" runat="server" ToolTip="Enter Your Address"></asp:TextBox>
                        <br /><br />


                        <asp:Label ID="lvlPhone" runat="server" Text="Phone Number : "></asp:Label>
                        <asp:TextBox ID="txtUpdatePhone" runat="server" ToolTip="Enter Your Phone Number"></asp:TextBox>
                        <br /><br />


                        <asp:Label ID="lblEmail" runat="server" Text="Email : "></asp:Label>
                        <asp:TextBox ID="txtUpdateEmail" runat="server" ToolTip="Enter Your Email"></asp:TextBox>
                        <br /><br />


                        <asp:Label ID="lblValidateStep1" ForeColor="Red" runat="server" ></asp:Label>
                        <br /><br />

                    </asp:WizardStep>
                        


                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <h3>User's Info Preview</h3><br/>
                        <b>User ID</b>
                        <asp:Label ID="lblUserID" runat="server" ></asp:Label>
                        <b>User Name : </b>
                        <asp:Label ID="lblUpdateName" runat="server" ></asp:Label><br />
                        <b>Users EGN : </b> 
                        <asp:Label ID="lblUpdateEGN" runat="server" ></asp:Label><br />
                        <b>Users Address : </b>
                        <asp:Label ID="lblUpdateAddress" runat="server" ></asp:Label><br />
                        <b>Users Phone : </b>
                        <asp:Label ID="lblUpdatePhone" runat="server" ></asp:Label><br />
                        <b>Users Email : </b>
                        <asp:Label ID="lblUpdateEmail" runat="server" ></asp:Label><br />
                        <br />
                        <asp:Label ID="lblUserAdded" runat="server" ForeColor="Green" ></asp:Label>

                    </asp:WizardStep>

                </WizardSteps>
            </asp:Wizard>

        </div>
    </form>
</body>
</html>
