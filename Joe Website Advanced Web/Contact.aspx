<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Joe_Website_Advanced_Web.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    
    <formview id="Form1" runat="server">
        <div style="font-family:Arial">
            <fieldset style="width:350px">
                <legend>Contact Us</legend>
                <table>
                    <tr>
                        <td>
                            <b>Name:</b>
                        </td>
                        <td>
                            <asp:TextBox ID="nameText" runat="server" Width="640px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="NameValidation" runat="server" ErrorMessage="Name is required"
                            ControlToValidate = "nameText"
                            Text="*"
                            ForeColor = "Red">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 37px">
                            <b>Email:</b>
                        </td>
                        <td style="height: 37px">
                            <asp:TextBox ID="emailText" runat="server" Width="640px"></asp:TextBox>
                        </td>
                        <td style="height: 37px">
                            <asp:RequiredFieldValidator ID="EmailValidation" runat="server" ErrorMessage="Email is required"
                            ControlToValidate = "emailText"
                            Text="*"
                            Display="Dynamic"
                            ForeColor = "Red">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ErrorMessage="Please enter a valid email" ControlToValidate="emailText"
                                ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Subject:</b>
                        </td>
                        <td>
                            <asp:TextBox ID="subjectText" runat="server" Width="640px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="SubjectValidation" runat="server" ErrorMessage="Subject is required"
                            ControlToValidate = "subjectText"
                            Text="*"
                            ForeColor = "Red">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                            <b>Message:</b>
                        </td>
                        <td style="vertical-align:top">
                            <asp:TextBox ID="messageText" runat="server" Rows="7" TextMode="MultiLine" Width="640px"></asp:TextBox>
                        </td>
                        <td style="vertical-align:top">
                            <asp:RequiredFieldValidator ID="MessageValidation" runat="server" ErrorMessage="Message is required"
                            ControlToValidate = "messageText"
                            Text="*"
                            ForeColor = "Red">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:ValidationSummary ID="ValidationSummary" runat="server" ForeColor="Red" HeaderText="Fix the following errors:" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="validLabel" Font-bold="true" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="submitBtn" runat="server" OnClick="submitBtn_Click" Text="Submit" />
                        </td>
                    </tr>
                </table>
    
                </fieldset>
        </formview>
</asp:Content>
