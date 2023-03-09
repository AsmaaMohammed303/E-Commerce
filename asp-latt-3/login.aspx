<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<%@ Register src="web_controls/loginWebUserControl.ascx" tagname="loginWebUserControl" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <div class="art-nav">
								<div class="l"></div>
								<div class="r"></div>
								<ul class="art-menu">
									<li><a href="./Default.aspx">
									<span class="l"> </span><span class="r"> </span>
									<span class="t">Home</span></a>
									</li>
									<li><a href="./register.aspx"  ><span class="l">
									</span><span class="r"> </span><span class="t">Regisetr</span>
									</a></li>
									<li><a href="./login.aspx" class="active"><span class="l">
									</span><span class="r"> </span><span class="t">login</span>
									</a></li>
									<li><a href="./shopping_cart.aspx" ><span class="l">
									</span><span class="r"> </span><span class="t">Shopping cart</span>
									</a></li>
								</ul>
							</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  
</asp:Content>








<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
       <asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>
       <br />
       <uc3:loginWebUserControl ID="loginWebUserControl1" runat="server" />
</asp:Content>










