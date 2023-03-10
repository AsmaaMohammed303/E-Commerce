<%@ Control Language="C#" AutoEventWireup="true" CodeFile="allpro.ascx.cs" Inherits="web_controls_allpro" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:userscs %>" 
    SelectCommand=""></asp:SqlDataSource>
<asp:DataList ID="DataList1" runat="server" CellPadding="5" CellSpacing="15" 
    DataKeyField="catno" DataSourceID="SqlDataSource1" RepeatColumns="2" 
    style="text-align: left" 
    >
    <ItemTemplate>
        <table align="center">
            <tr>
                <td>
                    &nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text='<%# Eval("productname") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                <a href="prodetail.aspx?productid=<%# Eval("productid") %>&catno=<%# Eval("catno") %> ">
                    <asp:Image ID="Image2" runat="server" Height="134px" 
                        
                        ImageUrl='<%# String.Format("..//proimages//{0}.jpg",Eval("productid")) %>' 
                        Width="141px" />
                   </a>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("price")+"$" %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Medium" 
                        ForeColor="Maroon" Text="Description"></asp:Label>
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


