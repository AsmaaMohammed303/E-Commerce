<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="prodetail.aspx.cs" Inherits="prodetail" %>
<%@Register Src="web_controls/prodetail.ascx" tagname="prodetail" TagPrefix="users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<div class="art-nav">
								<div class="l"></div>
								<div class="r"></div>
								<ul class="art-menu">
									<li><a href="./Default.aspx" >
									<span class="l"> </span><span class="r"> </span>
									<span class="t">Home</span></a>
									</li>
									<li><a href="./register.aspx" ><span class="l">
									</span><span class="r"> </span><span class="t">Regisetr</span>
									</a></li>
									<li><a href="./login.aspx"><span class="l">
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<users:prodetail ID="dd" runat="server" />
</asp:Content>

