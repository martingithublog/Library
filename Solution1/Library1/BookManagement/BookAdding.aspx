<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookAdding.aspx.cs" Inherits="Library1.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Wrapper"  >
    <h3>Add New Book</h3>
            <asp:Wizard ID="Wizard1"  class="Wizard1" runat="server" DisplayCancelButton="True" DisplaySideBar="False" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" CancelDestinationPageUrl="~/BookManagement/BookMain.aspx" CancelButtonText="Exit" FinishCompleteButtonText="Submit">
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                        <table>
                            <tr>
                                <td><strong>Book's Name</strong></td>
                                <td>
                                    <strong>
                                        : <asp:TextBox ID="txtNewBookName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator 
                                            ID="rfvNewBookName" runat="server" 
                                            ControlToValidate="txtNewBookName"
                                            ErrorMessage="Please Enter Correct Book Name" 
                                            ForeColor="#bf0000" Display="Dynamic">
                                        </asp:RequiredFieldValidator> 
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td><strong>Book's Author</strong></td>
                                <td> 
                                   <strong>:</strong> <asp:DropDownList
                                        ID="ddlBookAuthor" 
                                        runat="server">    
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        Book's ISBN
                                    </strong>
                                </td>
                                <td>
                                   <strong>
                                        : <asp:TextBox ID="txtBookISBN" runat="server"> </asp:TextBox>
                                        <asp:RequiredFieldValidator 
                                            ID="rfvBookISBN" 
                                            runat="server" 
                                            ControlToValidate="txtBookISBN"
                                            ErrorMessage="Please Enter Correct ISBN"
                                            ForeColor="#bf0000" 
                                            Display="Dynamic">
                                        </asp:RequiredFieldValidator>
                                   </strong> 
                                </td>
                            </tr>
                            <tr>
                                <td><strong>
                                    Book's Publishing Year
                                    </strong>
                                </td>
                                <td> 
                                   <strong>
                                        : <asp:TextBox ID="txtBookYear" runat="server"> </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvBookYear" runat="server" ControlToValidate="txtBookYear" ErrorMessage="Please Enter Correct Publishing Year" ForeColor="#bf0000" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RangeValidator runat="server" ID="RangeValidator1" Type="Date" ControlToValidate="txtBookYear" MaximumValue="9999/12/28" MinimumValue="1000/12/28" ErrorMessage="Enter Valid Date" ForeColor="#bf0000" Display="Dynamic"/>
                                   </strong> 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        Book's In Stock
                                    </strong>
                                </td>
                                <td>
                                   <strong>
                                        : <asp:TextBox ID="txtBookInStock" runat="server"> </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvBookInStock" runat="server" ControlToValidate="txtBookInStock" ErrorMessage="Please Enter The Quantity Of Books In Stock" ForeColor="#bf0000" Display="Dynamic"></asp:RequiredFieldValidator>
                                   </strong> 
                                </td>
                        </table>
                        <strong> 
                            <asp:Label ID="lblValidateStep1" ForeColor="Red" runat="server" ></asp:Label>
                        </strong>
                    </asp:WizardStep>

                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <table>
                            <tr>
                                <td>
                                    <strong>
                                        Book's Name
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblBookName" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        Book's Author
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblBookAuthor" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        Book's ISBN
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblBookISBN" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        Book's Publishing Year
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblBookYEar" runat="server" > </asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong> 
                                        Book's In Stock
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblBookInStock" runat="server" > </asp:Label>
                                    </strong>
                                </td>
                            </tr>
                        </table>
                         <strong>
                             <asp:Label ID="lblAuthorAdded" runat="server" ></asp:Label>
                         </strong>
                        </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        <hr style="background-color:#C0C0C0"/>
    </div>
</asp:Content>
