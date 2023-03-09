<%@ Control Language="C#" AutoEventWireup="true" CodeFile="checkout.ascx.cs" Inherits="web_controls_checkout" %>
<%@ Register src="loginWebUserControl.ascx" tagname="loginWebUserControl" tagprefix="uc1" %>
<%@ Register src="shopping_cart.ascx" tagname="shopping_cart" tagprefix="uc2" %>
<style type="text/css">
    .style1
    {
        height: 20px;
    }
    .style4
    {
        height: 28px;
    }
    .style5
    {
        height: 28px;
        width: 135px;
    }
    .style6
    {
        width: 135px;
    }
    .style7
    {
        height: 20px;
        width: 135px;
    }
</style>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<p>
    <asp:Label ID="Label12" runat="server" Font-Names="Lucida Handwriting" 
        Font-Size="20pt" ForeColor="#000066" Text="chechout"></asp:Label>
</p>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" 
            BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="1em" 
            Height="260px" 
            Width="513px" onactivestepchanged="Wizard1_ActiveStepChanged" 
            onfinishbuttonclick="Wizard1_FinishButtonClick">
            <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                HorizontalAlign="Center" />
            <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#284E98" />
            <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
                ForeColor="White" />
            <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
            <StepStyle Font-Size="0.8em" ForeColor="#333333" />
            <WizardSteps>
                <asp:WizardStep runat="server" StepType="Start" title="login">
                    &nbsp;
                    <uc1:loginWebUserControl ID="loginWebUserControl1" runat="server" />
                    &nbsp;
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="delivery address">
                    <table>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                                    Font-Names="Lucida Handwriting" Font-Size="20pt" Text="Delivery Address"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="city"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="area"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtarea" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="address"></asp:Label>
                            </td>
                            <td class="style1">
                                <textarea ID="txtaddress" cols="20" name="S1" rows="2"></textarea></td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="confirmation">
                    <uc2:shopping_cart ID="shopping_cart1" runat="server" />
                </asp:WizardStep>
                <asp:WizardStep runat="server" Title="payment">
                    <table>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" 
                                    Font-Names="Lucida Handwriting" Font-Size="20pt" Text="payment"></asp:Label>
                            </td>
                            <td rowspan="2">
                                <asp:Image ID="Image2" runat="server" Height="64px" 
                                    ImageUrl="~/images/visa.jpg" Width="97px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="card type"></asp:Label>
                            </td>
                            <td class="style5">
                                <asp:DropDownList ID="ddlcard" runat="server">
                                    <asp:ListItem>visa card</asp:ListItem>
                                    <asp:ListItem>pay pall card</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="card number"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtcardnum" runat="server"></asp:TextBox>
                            </td>
                            <td rowspan="3">
                                <asp:Image ID="Image1" runat="server" Height="84px" 
                                    ImageUrl="~/images/master.jpg" Width="147px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="expire"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtmonth" runat="server" Width="16px"></asp:TextBox>
                                <asp:TextBox ID="txtyear" runat="server" Width="93px" style="height: 22px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="name in card"></asp:Label>
                            </td>
                            <td class="style7">
                                <asp:TextBox ID="txtnameincard" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Finish" Title="shipment method">
                    <table>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" 
                                    Font-Names="Lucida Handwriting" Font-Size="20pt" Text="shipment method"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                    <asp:ListItem>&lt;b&gt;representative&lt;/b&gt;(only in cairo take one day)</asp:ListItem>
                                    <asp:ListItem Value="service mail">&lt;b&gt;service mail &lt;/b&gt;(take from 5 to 10 days)</asp:ListItem>
                                    <asp:ListItem Value="registration mail">&lt;b&gt;registration mail &lt;/b&gt;(DHL maximum 3 day)</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td class="style1">
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Complete" Title="complete">
                    <asp:Label ID="lblmsg" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </ContentTemplate>
</asp:UpdatePanel>
<br />



