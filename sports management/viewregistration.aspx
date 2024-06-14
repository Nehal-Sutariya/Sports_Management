<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="viewregistration.aspx.cs" Inherits="viewregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <br/><br/><br/>
        <center>
            <table border="1">
                <tr>
                    <td>
                        <h1 align="center">View Registration</h1>
                    </td>
                </tr>
                <tr>
                    <td align="Center">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <a href='viewregistration.aspx?u_id=<%# Eval("u_id") %>' onclick="return del();">
                                            <img src="../image/delete.jpg" height="35" width="35" />
                                        </a>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="u_id" HeaderText="User ID" />
                                <asp:BoundField DataField="u_fnm" HeaderText="First Name" />
                                <asp:BoundField DataField="u_lnm" HeaderText="Last Name" />
                                <asp:BoundField DataField="u_add" HeaderText="Address" />
                                <asp:BoundField DataField="u_city" HeaderText="City" />
                                <asp:BoundField DataField="u_eid" HeaderText="Email" />
                                <asp:BoundField DataField="u_con" HeaderText="Contact Number" />
                                <asp:BoundField DataField="u_sq" HeaderText="Security Question" />
                                <asp:BoundField DataField="u_ans" HeaderText="Security Answer" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </center>
    </div>
</asp:Content>
