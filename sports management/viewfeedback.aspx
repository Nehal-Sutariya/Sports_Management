<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="viewfeedback.aspx.cs" Inherits="viewfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <br/><br/><br/>
        <center>
            <table border="1">
                <tr>
                    <td>
                        <h1 align="center">View Feedback</h1>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <a href='viewfeedback.aspx?f_id=<%# Eval("f_id") %>' onclick="return del();">
                                            <img src="../image/delete.jpg" height="35" width="35" />
                                        </a>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <!-- Add other columns as needed for displaying feedback details -->
                                <asp:BoundField DataField="u_unm" HeaderText="Username" />
                                <asp:BoundField DataField="comment" HeaderText="Comment" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </center>
    </div>
</asp:Content>
