<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="games.aspx.cs" Inherits="games" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/><br/><br/>
    <table border="2" align="center">
        <tr>
            <center><th colspan="2"><font size="6.5">Games</font></th></center>
        </tr>
        <tr>
            <td>Games:</td>
            <td>
                <asp:DropDownList ID="g_nm" runat="server" Width="160px">
                    <asp:ListItem Value="select"></asp:ListItem>
                    <asp:ListItem Value="cricket">Cricket</asp:ListItem>
                    <asp:ListItem Value="hockey">Hockey</asp:ListItem>
                    <asp:ListItem Value="kabaddi">Kabaddi</asp:ListItem>
                    <asp:ListItem Value="basketball">Basketball</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="btn1_click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
