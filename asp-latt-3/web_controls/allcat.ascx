<%@ Control Language="C#" AutoEventWireup="true" CodeFile="allcat.ascx.cs" Inherits="web_controls_WebUserControl" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:userscs %>" 
    SelectCommand=""></asp:SqlDataSource>
    <center>
<asp:DataList ID="DataList1" runat="server" CellPadding="5" CellSpacing="15" 
    DataKeyField="catno" DataSourceID="SqlDataSource1" RepeatColumns="2" 
    style="text-align: left" onselectedindexchanged="DataList1_SelectedIndexChanged">
    <ItemTemplate>
        <table align="center">
            <tr>
                <td>
                    &nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text='<%# Eval("catname") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                <a href="proofcat.aspx?catno=<%#Eval("catno") %>">
                    <asp:Image ID="Image2" runat="server" Height="134px" 
                        ImageUrl='<%# "..//catimages//"+Eval("catno")+".jpg" %>' Width="141px" />
                        </a>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Medium" 
                        Text="Description" ForeColor="Maroon"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>

</center>