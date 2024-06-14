<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="viewteam.aspx.cs" Inherits="viewteam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <br/><br/><br/>
        <center>
            <table border="1">
                <tr>
                    <td>
                        <h1 align="center">View Team</h1>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <a href='viewteam.aspx?t_id=<%# Eval("t_id") %>' onclick="return del();">
                                            <img src="../image/delete.jpg" height="35" width="35" />
                                        </a>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <!-- Uncomment this section for edit functionality -->
                                <%--<asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <a href='team.aspx?t_id=<%# Eval("t_id") %>' onclick="return upd();">
                                            <img src="image/img4.jpg" height="35" width="35" />
                                        </a>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                                <asp:BoundField DataField="t_id" HeaderText="Team ID" />
                                <asp:BoundField DataField="t_nm" HeaderText="Team Name" />
                                <asp:BoundField DataField="c_nm" HeaderText="Coach Name" />
                                <asp:BoundField DataField="t_weight" HeaderText="Team Weight" />
                                <asp:BoundField DataField="t_height" HeaderText="Team Height" />
                                <asp:BoundField DataField="t_age" HeaderText="Team Age" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </center>
    </div>
</asp:Content>
