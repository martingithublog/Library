<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookUpdating1.aspx.cs" Inherits="Library1.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3> Book Update</h3>
            <asp:Wizard ID="Wizard1" runat="server" CancelDestinationPageUrl="~/BookManagement/BookMain.aspx" DisplayCancelButton="True" DisplaySideBar="False" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" CancelButtonText="Exit" FinishCompleteButtonText="Submit">
                <StartNavigationTemplate>
                    <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                    <asp:Button ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Exit" />
                </StartNavigationTemplate>
                <WizardSteps>

                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">

                        Book's Name : 
                        <asp:TextBox ID="txtUpdateBookName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" foreColor="Red" ControlToValidate="txtUpdateBookName" ErrorMessage="Please Enter Book Name" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:Button ID="btnFindBook" runat="server" Text="Find Book" OnClick="btnFindBook_Click" />

                        <br />
                        <asp:Label ID="lblBookID" runat="server" Visible="false"></asp:Label>
                        <br />

                        Book's Author : 
                        <asp:DropDownList ID="ddlBookAuthor" runat="server">
                                
                        </asp:DropDownList>

                        <br /><br />

                        Book's ISBN : 
                        <asp:TextBox ID="txtBookISBN" runat="server"></asp:TextBox>

                        <br /><br />
                        Book's Publishing Year : 
                        <asp:TextBox ID="txtBookYear" runat="server"></asp:TextBox>
                          
                        
                        <br /><br />
                        Books In Stock : 
                        <asp:TextBox ID="txtBookInStock" runat="server"></asp:TextBox>
                        <br /><br />
                        <asp:RangeValidator 
                            runat="server" 
                            ID="RangeValidator1" 
                            Type="Date" 
                            ControlToValidate="txtBookYear" 
                            MaximumValue="9999/12/28" 
                            MinimumValue="1000/12/28" 
                            ErrorMessage="Make Sure You Typed The Date Correctly" 
                           ForeColor="Red" Display="Dynamic"
                        />
                        <br />
                        <asp:Label ID="lblValidateStep1" ForeColor="Red" runat="server" ></asp:Label>
                    </asp:WizardStep>


                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">

                        Book's Name : 
                        <asp:Label ID="lblBookName" runat="server" ></asp:Label>
                        <br /><br />
                        <asp:Label ID="lblBookIDSet" runat="server"  Visible="false"></asp:Label>
                        Book's Author ID : 
                        <asp:Label ID="lblBookAuthor" runat="server" ></asp:Label>
                        <br /><br />
                        Book's ISBN : 
                        <asp:Label ID="lblBookISBN" runat="server" ></asp:Label>
                        <br /><br /> 
                        Book's Publishing Year : 
                        <asp:Label ID="lblBookYEar" runat="server" ></asp:Label>
                        <br /><br />
                        Books In Stock : 
                        <asp:Label ID="lblBookInStock" runat="server" ></asp:Label>
                        <br /><br />
                         <asp:Label ID="lblFinish" runat="server" ></asp:Label>
                    </asp:WizardStep>

                </WizardSteps>
            </asp:Wizard>

        </div>
    </form>
</body>
</html>
