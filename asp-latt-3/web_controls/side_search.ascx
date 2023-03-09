<%@ Control Language="C#" AutoEventWireup="true" CodeFile="side_search.ascx.cs" Inherits="web_controls_side_search" %>

<div>
	<!--<span class="art-button-wrapper">-->
    <asp:TextBox ID="txtsrch" runat="server" style="width: 95%;"></asp:TextBox>
    <br />
    <asp:LinkButton 
        ID="LinkButton1" runat="server" onclick="LinkButton1_Click" Font-Bold="True" 
        Font-Size="Medium" ForeColor="Black">Search</asp:LinkButton>
      <!-- </span>-->
   
</div>