<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br /><br /><br />
    <table border="2" align="center">
        <tr>
            <th colspan="2"><font size="6.5">Change Password</font></th>
        </tr>
        <tr>
            <td class="label">Username:</td>
            <td>
                <asp:TextBox ID="txtunm" runat="server" placeholder="Enter username"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label">Old Password:</td>
            <td>
                <asp:TextBox ID="txtopwd" runat="server" placeholder="Enter old password" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label">New Password:</td>
            <td>
                <asp:TextBox ID="txtnpwd" runat="server" placeholder="Enter new password" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label">Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtconfipass" runat="server" placeholder="Enter confirm password" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="label" align="center">
                <asp:Button ID="btnclogin" runat="server" Text="Submit" class="button" OnClick="btnclogin_click" Font-Bold="true" Font-Italic="false" Width="80px" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
