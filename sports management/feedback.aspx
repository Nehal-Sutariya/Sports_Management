<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <center>
            <h1 style="font-size: xx-large; font-weight: bold; font-style: italic; font-variant: inherit; text-transform: inherit; color: #080101;">Feedback...</h1>
        </center>
        <table class="table" align="center" border="2">
            <tr>
                <td>Username:</td>
                <td>
                    <asp:TextBox ID="u_unm" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_username" runat="server" ErrorMessage="Enter Username" ControlToValidate="u_unm" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Comment:</td>
                <td>
                    <asp:TextBox ID="comment" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_comment" runat="server" ErrorMessage="Enter Comment" ControlToValidate="comment" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="reset" runat="server" text="Cancel" class="button" />
                    <asp:Button ID="submit" runat="server" Text="Submit" CssClass="button" OnClick="submit_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
