<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="forgetpassword3.aspx.cs" Inherits="forgetpassword3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <center>
            <h1 style="font-size:xx-large; font-weight:bold; font-style:italic; font-variant:inherit; text-transform:inherit; color:#080101;">Forget Password..??</h1>
        </center>
        <table class="table" align="center" border="2">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="New Password"></asp:Label>
                    <asp:TextBox ID="new_pwd" runat="server" CssClass="textbox" TextMode="Password" placeholder="New Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_newpassword" runat="server" ErrorMessage="Enter new password" ControlToValidate="new_pwd" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label>
                    <asp:TextBox ID="con_pwd" runat="server" CssClass="textbox" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_confirmpassword" runat="server" ErrorMessage="Enter confirm password" ControlToValidate="con_pwd" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="reset" runat="server" value="cancel" class="button" />
                    <asp:Button ID="submit" runat="server" Text="submit" CssClass="button" OnClick="submit_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
