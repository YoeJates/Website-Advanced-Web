<%@ Page Title="Login" Language="C#" MasterPageFile="./Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Joe_Website_Advanced_Web.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <formview id="loginForm" runat="server">
        <div style="font-family:Arial">
            <fieldset style="width:350px">
                <legend>Register</legend>
                <table>
                    <tr>
                        <td>
                            <b>Username:</b>
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
                            <asp:Button ID="loginBtn" runat="server" OnClick="submitBtn_Click" Text="Login" />
                        </td>
                    </tr>
                </table>
    
                </fieldset>
            </div>
        </formview>
</asp:Content>
