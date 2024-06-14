<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="player.aspx.cs" Inherits="player" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <table border="2" align="center">
        <tr>
            <th colspan="2"><font size="6.5">Player</font></th>
        </tr>
        <tr>
            <td> Player Name:</td>
            <td>
                <asp:TextBox ID="p_nm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_p_nm" runat="server" ErrorMessage="Enter Player name" ControlToValidate="p_nm" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Game Name:</td>
            <td>
                <asp:TextBox ID="g_id" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_g_id" runat="server" ErrorMessage="Enter Game name" ControlToValidate="g_id" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="btn3_click" />
                <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="btn2_click" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
