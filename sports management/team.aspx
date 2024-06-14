<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="team.aspx.cs" Inherits="team" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <table border="2" align="center">
        <tr>
            <th colspan="2"><font size="6.5">Team</font></th>
        </tr>
        <tr>
            <td>Team Name:</td>
            <td>
                <asp:TextBox ID="t_nm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_name" runat="server" ErrorMessage="Enter team name" ControlToValidate="t_nm" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Coach Name:</td>
            <td>
                <asp:DropDownList ID="c_nm" runat="server" Width="160px">
                    <asp:ListItem Value="select"></asp:ListItem>
                    <asp:ListItem Value="tanay">Tanay (Cricket)</asp:ListItem>
                    <asp:ListItem Value="shakti">Shakti (Hockey)</asp:ListItem>
                    <asp:ListItem Value="dhairya">Dhairya (Kabaddi)</asp:ListItem>
                    <asp:ListItem Value="dev">Dev (Basketball)</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="req_name2" runat="server" ErrorMessage="Select Coach name" ControlToValidate="c_nm" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Team-Weight:</td>
            <td>
                <asp:TextBox ID="t_weight" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_name3" runat="server" ErrorMessage="Enter Team-Weight" ControlToValidate="t_weight" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Team-Height:</td>
            <td>
                <asp:TextBox ID="t_height" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_name4" runat="server" ErrorMessage="Enter Team-Height" ControlToValidate="t_height" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Team-Age:</td>
            <td>
                <asp:TextBox ID="t_age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="req_name5" runat="server" ErrorMessage="Enter Team-Age" ControlToValidate="t_age" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="btn1_click" />
                <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="btn2_click" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
