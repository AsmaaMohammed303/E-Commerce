﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="allpro.aspx.cs" Inherits="allpro" %>
<%@Register Src="web_controls/allpro.ascx" tagname="allpro" TagPrefix="pro" %>

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
    <pro:allpro ID="dd" runat="server"/>
</asp:Content>

