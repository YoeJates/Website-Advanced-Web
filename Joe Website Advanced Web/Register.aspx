<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Joe_Website_Advanced_Web.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <formview id="registerForm" runat="server">
        <div style="font-family:Arial">
            <fieldset style="width:350px">
                <legend>Register</legend>
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
    
                </fieldset>
        </formview>
</asp:Content>
