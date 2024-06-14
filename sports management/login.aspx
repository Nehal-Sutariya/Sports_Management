<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <center>
            <h1 style="font-size:xx-large; font-weight:bold; font-style:italic; font-variant:inherit; text-transform:inherit; color:#080101;">Login</h1>
        </center>
        <table class="table" align="center" border="2">
            <tr>
                <td>Username:</td>
                <td>
                    <asp:TextBox ID="u_unm" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="u_pwd" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="submit" runat="server" Text="submit" CssClass="button" OnClick="submit_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <a href="registration.aspx"><font color="black">Create New Account</font></a>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <a href="forgetpassword1.aspx"><font color="black">Forget password..??</font></a>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
