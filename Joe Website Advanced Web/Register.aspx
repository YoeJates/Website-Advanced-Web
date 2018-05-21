<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Joe_Website_Advanced_Web.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <formview id="registerForm" runat="server">
        <div style="font-family:Arial">
            <fieldset style="width:350px">
                <legend>Register</legend>
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
                        <td>
                            <b>Password:</b>
                        </td>
                        <td>
                            <asp:TextBox ID="passwordText" runat="server" Width="640px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="passwordValidation" runat="server" ErrorMessage="Password is required"
                            ControlToValidate = "passwordText"
                            Text="*"
                            ForeColor = "Red">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Password:</b>
                        </td>
                        <td>
                            <asp:TextBox ID="passwordText2" runat="server" Width="640px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="passwordValidation2" runat="server" ErrorMessage="Password confirmation is required"
                            ControlToValidate = "passwordText2"
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
                            <asp:Button ID="registerBtn" runat="server" OnClick="submitBtn_Click" Text="Register" />
                        </td>
                    </tr>
                </table>
    
                </fieldset>
        </formview>
</asp:Content>
