<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ullatestpro.ascx.cs" Inherits="web_controls_ullatestpro" %>
	
    <ul>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:userscs %>" 
            SelectCommand="SELECT top 4 * FROM [product] ORDER BY [writtingdate] DESC" 
            onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    all products <a href="allpro.aspx">click here</a> to show all of them
    <asp:DataList ID="DataList1" runat="server" DataKeyField="catno" 
            DataSourceID="SqlDataSource1">
        <ItemTemplate>
        <li>
         <a href="prodetail.aspx?productid=<%# Eval("productid") %>&catno=<%# Eval("catno") %> "> <%# Eval("productname") %></a>
            <br />
            </li>
        </ItemTemplate>
    </asp:DataList>
    
    <li><a href="#"></a></li>
    </ul>


