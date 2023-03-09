<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ulcategory.ascx.cs" Inherits="web_controls_WebUserControl" %>
<div>
	
    <ul>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:userscs %>" 
            SelectCommand="SELECT * FROM [category]" 
            onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    all categories of products <a href="allcat.aspx">click here</a> to show all of them
    <asp:DataList ID="DataList1" runat="server" DataKeyField="catno" 
            DataSourceID="SqlDataSource1">
        <ItemTemplate>
        <li>
         <a href="proofcat.aspx?catno=<%# Eval("catno") %>"> <%# Eval("catname") %></a>
            <br />
            </li>
        </ItemTemplate>
    </asp:DataList>
    
    <li><a href="#"></a></li>
    </ul>

</div>