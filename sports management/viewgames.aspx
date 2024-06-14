<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="viewgames.aspx.cs" Inherits="viewgames" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <br/><br/><br/>
        <center>
            <table border="1">
                <tr>
                    <td>
                        <h1 align="center">View Games</h1>
                    </td>
                </tr>
                <tr>
                    <td align="Center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <a href='viewgames.aspx?g_id=<%# Eval("g_id") %>' onclick="return del();">
                                            <img src="../image/delete.jpg" height="35" width="35" />
                                        </a>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="g_id" HeaderText="Game ID" />
                                <asp:BoundField DataField="g_name" HeaderText="Game Name" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </center>
    </div>
</asp:Content>
