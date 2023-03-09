<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shopping_cart.aspx.cs" Inherits="contact" %>

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
									<li><a href="./shopping_cart.aspx" class="active" ><span class="l">
									</span><span class="r"> </span><span class="t">Shopping cart</span>
									</a></li>
								</ul>
							</div>
    <style type="text/css">
        .style2
        {
            height: 466px;
        }
    </style>
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20pt" 
            ForeColor="#000066" Text="shopping cart" CssClass="aligncenter" 
        Font-Names="Lucida Handwriting" style="text-align: center"></asp:Label>
    <br />
    
    <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <table>
                <tr>
                    <td bgcolor="#CCCCCC" class="style1">
                        &nbsp;
                        <asp:Label ID="total" runat="server" Font-Bold="True" Font-Size="Medium" 
                            ForeColor="Black" Text="Label"></asp:Label>
                        &nbsp;</td>
                </tr>
             
          
             
                <tr>

                    <td align="center" class="style1" bgcolor="#CCCCCC">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hplcheck" runat="server" align="center" Font-Bold="True" 
                            Font-Size="Medium" ForeColor="#000066" NavigateUrl="~/checkout.aspx">Go to CheckOut</asp:HyperLink>
                    </td>

                
                </tr>

                  
             
                <tr>

                    <td align="center" class="style2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" CellPadding="4" ForeColor="#333333" GridLines="None" 
                            onrowcancelingedit="GridView1_RowCancelingEdit" 
                            onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                            onrowupdating="GridView1_RowUpdating" 
                            Width="518px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="catno" HeaderText="Category" ReadOnly="True" />
                                <asp:BoundField DataField="productid" HeaderText="ID" ReadOnly="True" />
                                <asp:BoundField DataField="productname" HeaderText="product name" 
                                    ReadOnly="True" />
                                <asp:BoundField DataField="price" HeaderText="price" ReadOnly="True" />
                                <asp:BoundField DataField="quantity" HeaderText="quantity" />
                                <asp:BoundField DataField="subtotal" HeaderText="total" ReadOnly="True" />
                                <asp:TemplateField HeaderText="image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="70px" 
                                            ImageUrl='<%# "..//proimages//"+Eval("catno")+"-"+Eval("productid")+".jpg" %>' 
                                            Width="80px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField HeaderText="controls" ShowDeleteButton="True" 
                                    ShowEditButton="True" ShowHeader="True" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <EmptyDataTemplate>
                                shopping cart empty now&nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                                    Font-Size="Medium" Font-Underline="False" ForeColor="Maroon" 
                                    NavigateUrl="~/allcat.aspx">click here</asp:HyperLink>
                                &nbsp;to add products
                            </EmptyDataTemplate>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>

                
                </tr>

                  
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
        
</asp:Content>

