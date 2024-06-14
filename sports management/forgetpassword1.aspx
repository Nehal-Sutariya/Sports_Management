<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="forgetpassword1.aspx.cs" Inherits="forgetpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <center>
            <h1 style="font-size:xx-large; font-weight:bold; font-style:italic; font-variant:inherit; text-transform:inherit; color:#080101;">Forgot Password</h1>
        </center>
        <table class="table" align="center" border="2">
            <tr>
                <td>Username:</td>
                <td>
                    <asp:TextBox ID="u_unm" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Security Question:</td>
                <td>
                    <asp:TextBox ID="u_sq" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Answer:</td>
                <td>
                    <asp:TextBox ID="u_ans" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="submit" runat="server" Text="Submit" CssClass="button" OnClick="submit_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
