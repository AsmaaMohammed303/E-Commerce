<%@ Control Language="C#" AutoEventWireup="true" CodeFile="shopping_cart.ascx.cs" Inherits="web_controls_WebUserControl" %>
<p>
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="#000066" Text="shopping cart"></asp:Label>
</p>
<asp:GridView ID="gridcart" runat="server" CellPadding="4" ForeColor="#333333" 
    GridLines="None" >
    <AlternatingRowStyle BackColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>

