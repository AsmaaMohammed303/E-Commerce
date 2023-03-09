<%@ Control Language="C#" AutoEventWireup="true" CodeFile="prodetail.ascx.cs" Inherits="web_controls_prodetail" %>
<style type="text/css">
    .style1
    {
        width: 5px;
    }
</style>

<table>
    <tr>
        <td class="style1" rowspan="2">
            <asp:Image ID="proimg" runat="server" Height="204px" Width="179px" />
        </td>
        <td>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                            ForeColor="#000066" Text="product details"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="category"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblcat" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="product id"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblproid" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="product name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblname" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="price"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblprice" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="max quantity"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblquan" runat="server"></asp:Label>
                        <asp:TextBox ID="txtquan" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="description"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbldesc" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="quantity you want"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtqy" runat="server" ontextchanged="TextBox1_TextChanged" 
                Width="30px">1</asp:TextBox>
            <asp:ImageButton ID="butoon_shopping" runat="server" 
                Height="31px" ImageUrl="~/images/addcart.jpg" onclick="ImageButton1_Click" 
                Width="111px" />
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtquan" ControlToValidate="txtqy" 
                ErrorMessage="this quantity higher from maximum quantity" 
                Operator="LessThanEqual" Type="Integer"></asp:CompareValidator>
        </td>
    </tr>
</table>

