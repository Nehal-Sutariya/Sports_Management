<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <center>
            <h1 style="font-size:xx-large; font-weight:bold; font-style:italic; font-variant: inherit; text-transform:inherit; color:#000101;">Registration...</h1>
        </center>
        <table class="table" align="center" border="5">
            <tr>
                <td>
                    <asp:Label ID="username" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="u_unm" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_username" runat="server" ErrorMessage="Enter Username" ControlToValidate="u_unm" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="firstname" runat="server" Text="Firstname"></asp:Label>
                    <asp:TextBox ID="u_fnm" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_fname" runat="server" ControlToValidate="u_fnm" ErrorMessage="Enter first name" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reg_firstname" runat="server" ControlToValidate="u_fnm" ErrorMessage="Enter only Characters" Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]+" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lastname" runat="server" Text="Lastname"></asp:Label>
                    <asp:TextBox ID="u_lnm" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_lname" runat="server" ControlToValidate="u_lnm" ErrorMessage="Enter last name" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reg_lastname" runat="server" ControlToValidate="u_lnm" ErrorMessage="Enter only Characters" Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]+" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="u_pwd" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_password" runat="server" ErrorMessage="Enter Password" ControlToValidate="u_pwd" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="address" runat="server" Text="Address"></asp:Label>
                    <asp:TextBox ID="u_add" runat="server" CssClass="textbox" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_address" runat="server" ErrorMessage="Enter Address" ControlToValidate="u_add" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="City"></asp:Label>
                    <asp:TextBox ID="u_city" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="u_city" ErrorMessage="Enter your city" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="emailid" runat="server" Text="Emailid"></asp:Label>
                    <asp:TextBox ID="u_eid" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_emailid" runat="server" ErrorMessage="Enter email-id" ControlToValidate="u_eid" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reg_emailid" runat="server" ControlToValidate="u_eid" ErrorMessage="Not a Valid Emailid" Font-Bold="True" ForeColor="Red" Display="Dynamic" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="contactno" runat="server" Text="ContactNo"></asp:Label>
                    <asp:TextBox ID="u_con" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_contactno" runat="server" ErrorMessage="Enter contact no" ControlToValidate="u_con" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reg_contactno" runat="server" ControlToValidate="u_con" ErrorMessage="Enter only 10 digits" Font-Bold="True" ForeColor="Red" ValidationExpression="^\d{10}$" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="security_que" runat="server" Text="Security Question"></asp:Label>
                    <asp:DropDownList ID="sq" runat="server" CssClass="textbox">
                        <asp:ListItem>---select---</asp:ListItem>
                        <asp:ListItem>What is your favourite game?</asp:ListItem>
                        <asp:ListItem>What is your favourite food?</asp:ListItem>
                        <asp:ListItem>What is your favourite colour?</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="answer" runat="server" Text="Answer"></asp:Label>
                    <asp:TextBox ID="u_ans" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="req_answer" runat="server" ControlToValidate="u_ans" ErrorMessage="Enter your answer" Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Reset" runat="server" Text="Reset" CssClass="button" OnClick="Reset_Click" />
                    <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="button" OnClick="Submit_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
