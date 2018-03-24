<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AuthorUpdate.aspx.cs" Inherits="Library1.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Wrapper">
            <h3>Update Author</h3><br />

            <asp:Wizard ID="Wizard1" class="Wizard1" runat="server"  OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" CancelDestinationPageUrl="~/AuthorManagement/AuthorMain.aspx" DisplayCancelButton="True" DisplaySideBar="False" CancelButtonText="Exit" FinishCompleteButtonText="Submit">
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
                        <div class="col-xs-3">
                            <p>Search For Author</p><br /><br />
                            <p>Author's Birthdate</p><br />
                        </div>
                        <div class="col-xs-9">

                            <asp:Label  ID="lblAuthorID"  runat="server"  Visible="false"  > </asp:Label> <b>

                          : <asp:TextBox  ID="txtAuthorSearch" runat="server"></asp:TextBox>

                            <asp:Button ID="btnAuthorSearch" class="round-button" runat="server" Text="Find Author" OnClick="btnAuthorSearch_Click" /><br />
                            <asp:RequiredFieldValidator ID="rfvAuthorSearch"  runat="server" ErrorMessage="Make Sure You Have Typed The Name (Correctly)"
                                ControlToValidate="txtAuthorSearch" Display="Dynamic" ForeColor="#bf0000">
                            </asp:RequiredFieldValidator></b><br /><br />
                        
                       
                            <b>:</b> <asp:TextBox ID="txtAuthorDate" runat="server"></asp:TextBox>
                            <asp:RangeValidator runat="server"  ID="RangeValidator1"  Type="Date" ControlToValidate="txtAuthorDate" MaximumValue="9999/12/28"  MinimumValue="1000/12/28" ErrorMessage="Enter Valid Date"  ForeColor="Red" Display="Dynamic" /><br /><br /><b>
                            <asp:Label  ID="lblStep1" ForeColor ="#bf0000" runat="server"> </asp:Label></b>

                         </div>
                    </asp:WizardStep>

                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <div class="col-xs-3">
                            <asp:Label   ID="lblAuthorIDSet" runat="server" Visible="false" ></asp:Label>
                            <p><strong>Author's Name</strong></p><br />
                            <p><strong>Author's Birthdate</strong></p>
                        </div>

                        <div class="col-sx-9">
                           
                               <p>: <asp:Label ID="lblAuthorName" runat="server" ></asp:Label><br /></p><br />
                               <p>: <asp:Label ID="lblAuthorDate"  runat="server" ></asp:Label><br /></p><br />
                               <p> <asp:Label ID="lblUpdateComplate" runat="server" ></asp:Label><br /></p><br />

                        </div>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
         <hr style="background-color:#C0C0C0"/>
    </div>
</asp:Content>
