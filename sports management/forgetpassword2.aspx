<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="forgetpassword2.aspx.cs" Inherits="forgetpassword2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <center>
            <h1 style="font-size:xx-large; font-weight:bold; font-style:italic; font-variant:inherit; text-transform:inherit; color:#080101;">Forget Password..??</h1>
        </center>
        <table class="table" align="center" border="2">
            <tr>
                <td>Question:</td>
                <td>
                    <asp:DropDownList ID="u_sq" runat="server" CssClass="textbox">
                        <asp:ListItem>---select---</asp:ListItem>
                        <asp:ListItem>what is your favourite game?</asp:ListItem>
                        <asp:ListItem>what is your favourite food?</asp:ListItem>
                        <asp:ListItem>what is your favourite colour?</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Answer:</td>
                <td>
                    <asp:TextBox ID="u_ans" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="reset" runat="server" value="cancel" class="button" />
                    <asp:Button ID="next" runat="server" Text="Next" CssClass="button" OnClick="next_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
