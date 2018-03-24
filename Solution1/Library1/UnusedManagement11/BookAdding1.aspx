<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookAdding1.aspx.cs" Inherits="Library1.WebForm10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Adding New Book</h3>
            <asp:Wizard ID="Wizard1" runat="server" DisplayCancelButton="True" DisplaySideBar="False" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" CancelDestinationPageUrl="~/BookManagement/BookMain.aspx" CancelButtonText="Exit" FinishCompleteButtonText="Submit">
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

                        Book's Name : 
                        <asp:TextBox 
                            ID="txtNewBookName"
                            runat="server">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvNewBookName" runat="server" 
                            ControlToValidate="txtNewBookName"
                            ErrorMessage="Please Enter Correct Book Name" 
                            ForeColor="Red" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <br /><br />

                        Book's Author : 
                        <asp:DropDownList
                            ID="ddlBookAuthor" 
                            runat="server">    
                        </asp:DropDownList>
                        <br /><br />

                        Book's ISBN : 
                        <asp:TextBox
                            ID="txtBookISBN"
                            runat="server">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvBookISBN" 
                            runat="server" 
                            ControlToValidate="txtBookISBN"
                            ErrorMessage="Please Enter Correct ISBN"
                            ForeColor="Red" 
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <br /><br />

                        Book's Publishing Year : 
                        <asp:TextBox 
                            ID="txtBookYear" 
                            runat="server">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvBookYear" 
                            runat="server"
                            ControlToValidate="txtBookYear"
                            ErrorMessage="Please Enter Correct Publishing Year"
                            ForeColor="Red" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RangeValidator 
                            runat="server" 
                            ID="RangeValidator1" 
                            Type="Date" 
                            ControlToValidate="txtBookYear" 
                            MaximumValue="9999/12/28" 
                            MinimumValue="1000/12/28" 
                            ErrorMessage="Enter Valid Date" 
                            ForeColor="Red" Display="Dynamic"/>
                        <br /><br />

                        Book's In Stock : 
                        <asp:TextBox
                            ID="txtBookInStock"
                            runat="server">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvBookInStock" 
                            runat="server" 
                            ControlToValidate="txtBookInStock" 
                            ErrorMessage="Please Enter The Quantity Of Books In Stock"
                            ForeColor="Red" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <br /><br />

                         <asp:Label
                             ID="lblValidateStep1"
                             ForeColor="Red" 
                             runat="server" >
                         </asp:Label>
                        <br /><br />

                    </asp:WizardStep>

                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">

                        Book's Name : 
                        <asp:Label 
                            ID="lblBookName" 
                            runat="server" >
                        </asp:Label>
                        <br /><br />

                        Book's Author : 
                        <asp:Label 
                            ID="lblBookAuthor"
                            runat="server" >
                        </asp:Label>
                        <br /><br />

                        Book's ISBN : 
                        <asp:Label 
                            ID="lblBookISBN"
                            runat="server" >
                        </asp:Label>
                        <br /><br /> 

                        Book's Publishing Year : 
                        <asp:Label 
                            ID="lblBookYEar"
                            runat="server" >
                        </asp:Label>
                        <br /><br />

                        Book's In Stock : 
                        <asp:Label 
                            ID="lblBookInStock" 
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
