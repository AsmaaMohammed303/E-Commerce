<%@ Control Language="C#" AutoEventWireup="true" CodeFile="aggadmin.ascx.cs" Inherits="admin_user_control_aggadmin" %>
<script language="javascript" type="text/javascript">
// <![CDATA[

    function img0_onclick() {

    }

// ]]>
</script>

<style type="text/css">
    .style1
    {
        height: 49px;
    }
    #imgmale
    {
        height: 37px;
    }
    .style2
    {
        width: 204px;
    }
    .style3
    {
        height: 49px;
        width: 204px;
    }
    #imgfemale
    {
        height: 37px;
    }
</style>

<table>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                Text="number of products"></asp:Label>
        </td>
        <td class="style2">
&nbsp;
            <asp:Label ID="lblprocount" runat="server" Font-Bold="True" ForeColor="#003300"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                Text="max price of all product"></asp:Label>
        </td>
        <td class="style2">
&nbsp;
            <asp:Label ID="lblmaxprice" runat="server" Font-Bold="True" ForeColor="#003300"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                Text="product name of max price"></asp:Label>
        </td>
        <td class="style2">
&nbsp;
            <asp:Label ID="lblpronameofmaxprice" runat="server" Font-Bold="True" 
                ForeColor="#003300"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" 
                Text="male members precentage"></asp:Label>
        </td>
        <td class="style2">
&nbsp;&nbsp;<asp:ImageButton ID="imgmper" runat="server" Height="23px" 
                ImageUrl="~/images/bar4.PNG"  Width="100%"  />
        </td>
        <td>
            <br />
            <asp:Label ID="lblmper" runat="server" Font-Bold="True" ForeColor="#003300" 
                Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style1">
            <br />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                Text="female members precentage"></asp:Label>
        </td>
        <td class="style3" id="lblfper">
            &nbsp;
            <br />
            <asp:ImageButton ID="imgfper" runat="server" Height="23px" 
                ImageUrl="~/images/bar4.PNG"  Width="20%" />
        </td>
        <td class="style1" id="lblfper">
            <br />
            <asp:Label ID="lblfper" runat="server" Font-Bold="True" ForeColor="#003300" 
                Text="Label"></asp:Label>
        </td>
    </tr>
</table>

