<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master"  AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="admin_category" %>
<%@ Register src="user-control/category_web_user.ascx" tagname="category_web_user" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<div class="art-nav">   
                                <div class="l"></div>
								<div class="r"></div>
								<ul class="art-menu">
									<li><a href="./admin.aspx" >
									<span class="l"> </span><span class="r"> </span>
									<span class="t">Home</span></a>
									</li>
									<li><a href="./category.aspx" class="active"><span class="l">
									</span><span class="r"> </span><span class="t">category</span>
									</a></li>
									<li><a href="./products.aspx"><span class="l">
									</span><span class="r"> </span><span class="t">product</span>
									</a></li>
                                    <li><a href="./search_member.aspx"><span class="l">
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
    <uc3:category_web_user ID="category_web_user1" runat="server" />
</asp:Content>

