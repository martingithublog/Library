<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuthorUpdate1.aspx.cs" Inherits="Library1.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Author Update</h3>
            <br />
            <asp:Wizard ID="Wizard1" runat="server" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" CancelDestinationPageUrl="~/AuthorManagement/AuthorMain.aspx" DisplayCancelButton="True" DisplaySideBar="False" CancelButtonText="Exit" FinishCompleteButtonText="Submit">
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

                        <b>Search For Author:</b>
                         <asp:Label 
                             ID="lblAuthorID"
                             runat="server" 
                             Visible="false"  >
                         </asp:Label>
                        <asp:TextBox 
                            ID="txtAuthorSearch"
                            runat="server">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="rfvAuthorSearch" 
                            runat="server"
                            ErrorMessage="Make Sure You Have Typed The Name (Correctly)"
                            ControlToValidate="txtAuthorSearch" Display="Dynamic"
                            ForeColor="#CC0000">
                        </asp:RequiredFieldValidator>
                        <asp:Button ID="btnAuthorSearch" 
                            runat="server" 
                            Text="Find Author"
                            OnClick="btnAuthorSearch_Click" />
                        <br /><br />
                        
                       <b> Authors Day Of Birth :</b>
                        <asp:TextBox 
                            ID="txtAuthorDate"
                            runat="server">
                        </asp:TextBox>
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
                        <br /><br />

                    </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <asp:Label 
                            ID="lblAuthorIDSet"
                            runat="server" 
                            Visible="false" >
                        </asp:Label>
                       <b> Author's Name :</b>
                        <asp:Label 
                            ID="lblAuthorName"
                            runat="server" >
                        </asp:Label>
                        <br /><br />
                       <b> Author's Date of Birth : </b>  
                        <asp:Label ID="lblAuthorDate"
                            runat="server" >
                        </asp:Label>
                        <br /><br />
                        <asp:Label ID="lblUpdateComplate" runat="server" ></asp:Label>
                        <br /><br />
              
                    </asp:WizardStep>


                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
