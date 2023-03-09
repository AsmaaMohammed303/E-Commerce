<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master"  AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="_Default" %>

<%@ Register src="user-control/aggadmin.ascx" tagname="aggadmin" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <div class="art-nav">
                                <div class="l"></div>
								<div class="r"></div>
								<ul class="art-menu">
									<li><a href="./admin.aspx" class="active">
									<span class="l"> </span><span class="r"> </span>
									<span class="t">Home</span></a>
									</li>
									<li><a href="./category.aspx"><span class="l">
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
    <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                    ForeColor="#006600"></asp:Label>
                &nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" 
        Font-Bold="True" Font-Size="Larger" ForeColor="#003300" 
        onclick="LinkButton2_Click" Visible="False">(log-out)</asp:LinkButton>
    <br />
    <br />
    <uc1:aggadmin ID="aggadmin1" runat="server" />
</asp:Content>

