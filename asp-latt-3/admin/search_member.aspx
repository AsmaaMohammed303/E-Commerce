<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="search_member.aspx.cs" Inherits="admin_search_member" %>
<%@ Register src="user-control/member_search.ascx" tagname="member_search" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <div class="art-nav">
                                <div class="l"></div>
								<div class="r"></div>
								<ul class="art-menu">
									<li><a href="./admin.aspx" >
									<span class="l"> </span><span class="r"> </span>
									<span class="t">Home</span></a>
									</li>
									<li><a href="./category.aspx"><span class="l">
									</span><span class="r"> </span><span class="t">category</span>
									</a></li>
									<li><a href="./products.aspx" ><span class="l">
									</span><span class="r"> </span><span class="t">product</span>
									</a></li>
                                    <li><a href="./search_member.aspx" class="active"><span class="l">
									</span><span class="r"> </span><span class="t">search</span>
									</a></li>
									<li><a href="./contact.aspx"><span class="l">
									</span><span class="r"> </span><span class="t">Contact us</span>
									</a></li>
								</ul>
							</div>	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
                 	
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc3:member_search ID="member_search1" runat="server" />
</asp:Content>


