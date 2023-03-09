<%@ Control Language="C#" AutoEventWireup="true" CodeFile="member_search.ascx.cs" Inherits="admin_user_control_member_search" %>
<style type="text/css">
    .style1
    {
        width: 100%;
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
    .style4
    {
        height: 82px;
    }
    .style5
    {
        height: 70px;
    }
    .style6
    {
        height: 45px;
    }
</style>

<p>
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</p>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table align="center" class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Font-Underline="True" ForeColor="#000099" Text="search for members"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Large" 
                        Text="search by"></asp:Label>
                    <asp:RadioButtonList ID="rdofields" runat="server" Font-Size="Medium" 
                        ForeColor="Maroon" RepeatDirection="Horizontal">
                        <asp:ListItem>username</asp:ListItem>
                        <asp:ListItem>gender</asp:ListItem>
                        <asp:ListItem>name</asp:ListItem>
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
                    <asp:Button ID="Button1" runat="server" Font-Bold="False" Font-Size="Large" 
                        ForeColor="#000099" Height="31px" onclick="Button1_Click" Text="search" 
                        Width="88px" />
                </td>
            </tr>
            <tr>
                <td class="style3">
            <br />
                    <asp:Button ID="btnremove" runat="server" Font-Bold="False" Font-Size="Medium" 
                        ForeColor="Black" onclick="btnremove_Click" style="text-align: right" 
                        Text="remove-selected user" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="mss" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Maroon"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5" style="text-align: center">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                                <ProgressTemplate>
                                    <img alt="" src="../../images/loadingmap.gif" style="height: 38px; width: 51px" />
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </ContentTemplate>
                    </asp:UpdatePanel>
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
    </ContentTemplate>
</asp:UpdatePanel>


