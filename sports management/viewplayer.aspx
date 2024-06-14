<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="viewplayer.aspx.cs" Inherits="viewplayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <br/><br/><br/>
        <center>
            <table border="1">
                <tr>
                    <td>
                        <h1 align="center">View Player</h1>
                    </td>
                </tr>
                <tr>
                    <td align="Center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <a href='viewplayer.aspx?p_id=<%# Eval("p_id") %>' onclick="return del();">
                                            <img src="../image/delete.jpg" height="35" width="35" />
                                        </a>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="p_id" HeaderText="Player ID" />
                                <asp:BoundField DataField="p_name" HeaderText="Player Name" />
                                <asp:BoundField DataField="g_id" HeaderText="Game ID" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </center>
    </div>
</asp:Content>
