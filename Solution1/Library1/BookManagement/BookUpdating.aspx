<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookUpdating.aspx.cs" Inherits="Library1.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Wrapper">
      <h3>Update Book</h3>
            <asp:Wizard ID="Wizard1" class="Wizard1" runat="server" CancelDestinationPageUrl="~/BookManagement/BookMain.aspx" DisplayCancelButton="True" DisplaySideBar="False" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick" CancelButtonText="Exit" FinishCompleteButtonText="Submit">
                <WizardSteps>

                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                        <asp:Label ID="lblBookID" runat="server" Visible="false"></asp:Label>
                        <table>
                            <tr>
                                <td>
                                   <strong>Book's Name</strong> 
                                </td>
                                <td>
                                      <strong>
                                          : <asp:TextBox ID="txtUpdateBookName" runat="server"></asp:TextBox>
                                          <asp:Button ID="btnFindBook" class="round-button" runat="server" Text="Find Book" OnClick="btnFindBook_Click" /><br />
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                              foreColor="Red" ControlToValidate="txtUpdateBookName"
                                              ErrorMessage="Please Enter Book Name" Display="Dynamic">
                                          </asp:RequiredFieldValidator>
                                        </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Book's Author</strong>
                                </td>
                                <td>
                                    <strong>:</strong> <asp:DropDownList ID="ddlBookAuthor" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Book's ISBN</strong>
                                </td>
                                <td>
                                    <strong>:</strong> <asp:TextBox ID="txtBookISBN" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Book's Publishing Year</strong>
                                </td>
                                <td>
                                   <strong>:</strong> <asp:TextBox ID="txtBookYear" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Books In Stock</strong>
                                </td>
                                <td>
                                    <strong>:</strong> <asp:TextBox ID="txtBookInStock" runat="server"></asp:TextBox>
                                     <asp:RangeValidator runat="server"  ID="RangeValidator1" Type="Date"  ControlToValidate="txtBookYear" MaximumValue="9999/12/28" MinimumValue="1000/12/28" ErrorMessage="Make Sure You Typed The Date Correctly" ForeColor="Red" Display="Dynamic"/>
                                </td>
                            </tr>
                        </table>
                        <strong>
                        <asp:Label ID="lblValidateStep1" ForeColor="#bf0000" runat="server" ></asp:Label>
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
                                         <asp:Label ID="lblBookIDSet" runat="server"  Visible="false"></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        Book's Author ID
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
                                        : <asp:Label ID="lblBookYEar" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>
                                        Books In Stock
                                    </strong>
                                </td>
                                <td>
                                    <strong>
                                        : <asp:Label ID="lblBookInStock" runat="server" ></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <strong>
                                        <asp:Label ID="lblFinish" runat="server" ></asp:Label>
                                    </strong>
                                    
                                </td>
                            </tr>

                        </table>
                    </asp:WizardStep>

                </WizardSteps>
            </asp:Wizard>
         <hr style="background-color:#C0C0C0"/>
    </div>
</asp:Content>
