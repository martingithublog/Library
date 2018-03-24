<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AuthorAdding.aspx.cs" Inherits="Library1.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Wrapper">
            <h3>Add New Author</h3><br />

            <asp:Wizard ID="Wizard1" class="Wizard1"  runat="server" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick1" OnNextButtonClick="Wizard1_NextButtonClick1" CancelDestinationPageUrl="~/AuthorManagement/AuthorMain.aspx" DisplayCancelButton="True" DisplaySideBar="False" CancelButtonText="Exit" FinishCompleteButtonText="Submit" Width="759px">
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
                       <div class ="col-xs-3">
                           <p>Author's Name </p><br />
                           <p>Author's Birthdate</p>
                       </div>
                        <div  class ="col-xs-9">
                            <b>:</b> <asp:TextBox ID="txtAuthorName" runat="server"></asp:TextBox><br/><b>
                            <asp:RequiredFieldValidator 
                                ID="rfvAuthorName" 
                                runat="server" 
                                ControlToValidate="txtAuthorName" 
                                ErrorMessage="Please Enter Author's Name" 
                                ForeColor="#bf0000" Display="Dynamic">
                            </asp:RequiredFieldValidator></b><br />

                           <b>:</b> <asp:TextBox ID="txtAuthorDate"  runat="server" ToolTip="YYYY/MM/DD"></asp:TextBox><br /><b>
                            <asp:RequiredFieldValidator 
                                ID="rvfAuthorDate" 
                                runat="server" 
                                ControlToValidate="txtAuthorDate" 
                                ErrorMessage="Please Enter Author's Birth Date"
                                ForeColor="#bf0000"
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
                               ForeColor="#bf0000" Display="Dynamic"
                            /></b>
                         </div>
                        </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <div class="col-xs-3">
                            <p>Author's Name</p><br />
                            <p>Author's Birthdate </p> 
                        </div>
                        <div class="col-sx-9">
                            <p>: <asp:Label  ID="Label1"  runat="server" ></asp:Label></p><br />
                            <p>: <asp:Label ID="Label2" runat="server" ></asp:Label> </p><br />
                            <p><asp:Label ID="lblAuthorAdded" runat="server" ></asp:Label></p>
                        </div>
                    </asp:WizardStep>

                </WizardSteps>
            </asp:Wizard>
         <hr style="background-color:#C0C0C0"/>
    </div>
</asp:Content>
