<%@ Control Language="C#" AutoEventWireup="true" CodeFile="loginWebUserControl.ascx.cs" Inherits="loginWebUserControl" %>

<style type="text/css">
    .style1
    {
    }
    .style5
    {
        width: 125px;
    }
    .style6
    {
        width: 125px;
        height: 32px;
    }
    .style7
    {
        width: 735px;
        height: 32px;
    }
    .style8
    {
        width: 735px;
    }
    </style>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:MultiView ID="MultiView5" runat="server" ActiveViewIndex="0">
            <asp:View ID="View7" runat="server">
                <p>
                    <table align="left" class="style1">
                        <tr>
                            <td class="style2" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="16pt" 
                                    Font-Underline="False" ForeColor="#000099" Text="LogIn with your account" 
                                    Font-Names="Lucida Handwriting"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" colspan="2">
                                <asp:Label ID="mss" runat="server" Font-Bold="True" Font-Size="Small" 
                                    ForeColor="Maroon"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label1" runat="server" Text="usename"></asp:Label>
                            </td>
                            <td class="style8">
                                <asp:TextBox ID="txtuser" runat="server"  
                                    Width="181px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
                            </td>
                            <td class="style8">
                                <asp:TextBox ID="txtpass" runat="server"  
                                    type="password" Width="180px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                            </td>
                            <td class="style7">
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="remember me" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
                                    onclick="Button1_Click" Text="LogIn" Width="98px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style8">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                                            <ProgressTemplate>
                                                <asp:Image ID="Image2" runat="server" Height="43px" ImageUrl="~/images/loadingmap.gif" 
                                                    Width="71px" />
                                                loading.........
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                    </table>
                </p>
            </asp:View>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:View ID="View8" runat="server">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#006600" 
                    Text="mss2"></asp:Label>
                &nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <a href="changepass.aspx">change 
                password</a> &nbsp;<br />&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp; <a href="editprofile.aspx">edit 
                profile</a>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <a href="unsubscribe.aspx">unsubscribe</a>
                <br />
                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
                    onclick="LinkButton1_Click">logout</asp:LinkButton>
                <br />
         
                              
            </asp:View>
        </asp:MultiView>
    </ContentTemplate>
</asp:UpdatePanel>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>



