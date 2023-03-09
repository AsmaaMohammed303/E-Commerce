<%@ Control Language="C#" AutoEventWireup="true" CodeFile="product_web_user.ascx.cs" Inherits="admin_user_control_product_web_user" %>
<style type="text/css">

    .style1
    {
        width: 91%;
    }
    .style4
    {
        height: 82px;
    }
    .style2
    {
        text-align: center;
    }
    .style3
    {
        height: 37px;
        text-align: center;
    }
    .style5
    {
        height: 70px;
    }
    #TextArea1
    {
        width: 120px;
    }
    #txtdesc
    {
        width: 149px;
    }
    .style11
    {
        text-align: center;
    }
    .style15
    {
        height: 45px;
    }
    .style17
    {
        width: 226px;
    }
    .style20
    {
        width: 286px;
    }
    .style21
    {
        width: 5px;
    }
    .style23
    {
        width: 401px;
        height: 19px;
    }
    .style24
    {
        width: 226px;
        height: 19px;
    }
    .style25
    {
        width: 5px;
        height: 19px;
    }
    .style28
    {
        width: 401px;
    }
</style>


    <ContentTemplate>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
            <asp:View ID="View2" runat="server">
                <table class="style1">
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="title" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Size="XX-Large" Font-Underline="True" Text="edit products"></asp:Label>
                            <br />
                        </td>
                        <td class="style20" rowspan="9" ID="img">
                            <asp:Image ID="img" runat="server" Height="204px" Width="190px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style28">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Black" Text="category"></asp:Label>
                        </td>
                        <td class="style17">
                            <asp:DropDownList ID="txtno" runat="server" DataSourceID="SqlDataSource1" 
                                DataTextField="catname" DataValueField="catno" Height="20px" Width="101px" 
                                onselectedindexchanged="txtno_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:userscs %>" 
                                SelectCommand="SELECT [catno], [catname] FROM [category]">
                            </asp:SqlDataSource>
                        </td>
                        <td class="style21">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Black" Text="product id"></asp:Label>
                        </td>
                        <td class="style17">
                            <asp:TextBox ID="txtid" runat="server" Width="171px" 
                             ></asp:TextBox>
                        </td>
                        <td class="style21">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Black" Text="product name"></asp:Label>
                        </td>
                        <td class="style17">
                            <asp:TextBox ID="txtname" runat="server" Width="171px"></asp:TextBox>
                        </td>
                        <td class="style21">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Black" Text="price"></asp:Label>
                        </td>
                        <td class="style17">
                            <asp:TextBox ID="txtprice" runat="server" Width="171px"></asp:TextBox>
                        </td>
                        <td class="style21">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Black" Text="available quantity"></asp:Label>
                        </td>
                        <td class="style17">
                            <asp:TextBox ID="txtquan" runat="server"  
                                Width="171px"></asp:TextBox>
                        </td>
                        <td class="style21">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Black" Text="description"></asp:Label>
                        </td>
                        <td class="style17">
                            <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine" Width="152px"></asp:TextBox>
                        </td>
                        <td class="style21">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style23">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Black" Text="image"></asp:Label>
                        </td>
                        <td class="style24">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td class="style25">
                            </td>
                    </tr>
                    <tr>
                        <td class="style28">
                            <asp:Label ID="msg" runat="server" Font-Bold="False" ForeColor="Maroon" 
                                Font-Size="Medium"></asp:Label>
                        </td>
                        <td class="style17">
                            &nbsp;</td>
                        <td class="style21">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">
                            &nbsp;</td>
                        <td class="style17">
                            <asp:Button ID="btnsave" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="#000066" Text="save" Width="71px" onclick="btnsave_Click" />
                            <asp:Button ID="btncancel" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="#000066" onclick="btncancel_Click" Text="cancel" Width="71px" />
                        </td>
                        <td class="style21">
                            &nbsp;</td>
                        <td class="style20">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11" colspan="4">
                       
                                <ContentTemplate>
                            
                                        <ProgressTemplate>
                                            <img alt="" src="../../images/loadingmap.gif" style="height: 45px; width: 70px" />
                                        </ProgressTemplate>
                                   
                                </ContentTemplate>
                  
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View1" runat="server">
                <table align="center" class="style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                Font-Underline="True" ForeColor="#000099" Text="search for products"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Large" 
                                Text="search by"></asp:Label>
                            <asp:RadioButtonList ID="rdofields" runat="server" Font-Size="Medium" 
                                ForeColor="Maroon" RepeatDirection="Horizontal">
                                <asp:ListItem>product name</asp:ListItem>
                                <asp:ListItem>price</asp:ListItem>
                                <asp:ListItem>description</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="Large" 
                                Text="value of search"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtsrch" runat="server" Height="23px"></asp:TextBox>
                            &nbsp;
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="#000099" Height="31px" Text="search" Width="88px" 
                                onclick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <br />
                            <asp:Button ID="btnadd" runat="server" Font-Bold="False" Font-Size="Medium" 
                                Height="28px" onclick="btnadd_Click" style="margin-bottom: 0px" Text="add" 
                                Width="75px" />
                            <asp:Button ID="btnupdate" runat="server" Font-Bold="False" Font-Size="Medium" 
                                Height="29px" Text="update" Width="74px" onclick="btnupdate_Click" />
                            <asp:Button ID="btnremove" runat="server" Font-Bold="False" Font-Size="Medium" 
                                style="text-align: right" Text="remove" Width="87px" 
                                onclick="btnremove_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            <asp:Label ID="mss" runat="server" Font-Bold="False" Font-Size="Medium" 
                                ForeColor="Maroon"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" style="text-align: center">
                          
                                <ProgressTemplate>
                                    <img alt="" src="../../images/loadingmap.gif" style="height: 45px; width: 70px" />
                                </ProgressTemplate>
                     
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="select" 
                                        ShowHeader="True" Text="&gt;&gt;&gt;" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </ContentTemplate>


