<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuthorAdding1.aspx.cs" Inherits="Library1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Adding New Author</h3>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick1" OnNextButtonClick="Wizard1_NextButtonClick1" CancelDestinationPageUrl="~/AuthorManagement/AuthorMain.aspx" DisplayCancelButton="True" DisplaySideBar="False" CancelButtonText="Exit" FinishCompleteButtonText="Submit">
                <SideBarTemplate>
                    <asp:DataList ID="SideBarList" runat="server">
                        <ItemTemplate>
                            <asp:LinkButton ID="SideBarButton" runat="server"></asp:LinkButton>
                        </ItemTemplate>
                        <SelectedItemStyle Font-Bold="True" />
                    </asp:DataList>
                </SideBarTemplate>
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                       <b> Author's Name : </b>
                        <asp:TextBox 
                            ID="txtAuthorName"
                            runat="server">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvAuthorName" 
                            runat="server" 
                            ControlToValidate="txtAuthorName" 
                            ErrorMessage="Please Enter Author's Name" 
                            ForeColor="Red" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <br /><br />

                        <b>Author's Birth Date : </b>
                        <asp:TextBox ID="txtAuthorDate" 
                            runat="server"
                            ToolTip="YYYY/MM/DD">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rvfAuthorDate" 
                            runat="server" 
                            ControlToValidate="txtAuthorDate" 
                            ErrorMessage="Please Enter Author's Birth Date"
                            ForeColor="Red"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                       <asp:RangeValidator 
                            runat="server" 
                            ID="RangeValidator1" 
                            Type="Date" 
                            ControlToValidate="txtAuthorDate" 
                            MaximumValue="9999/12/28" 
                            MinimumValue="1000/12/28" 
                            ErrorMessage="Enter Valid Date" 
                           ForeColor="Red" Display="Dynamic"
                        />
                        </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <b>Author's Name : </b> 
                        <asp:Label 
                            ID="Label1" 
                            runat="server" >
                        </asp:Label>
                        <br /><br />

                       <b> Author'd Date of Birth : </b> 
                        <asp:Label 
                            ID="Label2"
                            runat="server" >
                        </asp:Label>
                        <br /><br />

                        <asp:Label 
                            ID="lblAuthorAdded"
                            runat="server" >
                        </asp:Label>
                        
                    </asp:WizardStep>

                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
