<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlsignup.ascx.cs" Inherits="WebUserControlsignup" %>
<style type="text/css">

    .style1
    {
        width: 154px;
    }
    .style3
    {
        height: 32px;
    }
    .style4
    {
        width: 26px;
    }
    .style5
    {
        height: 31px;
    }
    .style6
    {
        width: 154px;
        height: 31px;
    }
    .style7
    {
        width: 26px;
        height: 31px;
    }
    </style>

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table align="center" border="0" 
            style="border-style: none; border-color: #000000;">
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="16pt" 
                        Font-Underline="False" ForeColor="#000099" Text="Sign Up For New Account" 
                        CssClass="shopping cart" Font-Bold="True" Font-Names="Lucida Handwriting" 
                        style="text-align: center"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="mss" runat="server" ForeColor="Maroon"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="username:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtuser" ErrorMessage="please enter the username" 
                        ForeColor="Maroon">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="password:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtpwd" ErrorMessage="please enter password" 
                        ForeColor="Maroon">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="repassword:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtrepwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtrepwd" ControlToValidate="txtpwd" 
                        ErrorMessage="please enter identical password" ForeColor="Maroon">*</asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="txtrepwd" ErrorMessage="please confirm your password" 
                        ForeColor="Maroon">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="name:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="please enter the name" 
                        ForeColor="Maroon">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="email:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="please enter valid email" 
                        ForeColor="Maroon" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="please enter the your email" 
                        ForeColor="Maroon">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="phone:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtphone" ErrorMessage="please enter phone" 
                        ForeColor="Maroon">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="gende:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:RadioButtonList ID="txtgender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtgender" ErrorMessage="please select your type" 
                        ForeColor="Maroon">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="birthdate:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtbirth" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txtbirth" ErrorMessage="please enter birthdate" 
                        ForeColor="Maroon">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtbirth" ErrorMessage="invalid Range" ForeColor="Maroon" 
                        MaximumValue="1/1/2000" MinimumValue="1/1/1970" Type="Date">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="question:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtquestion" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtquestion" ErrorMessage="please enter protected question" 
                        ForeColor="Maroon">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="answer:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtanswer" runat="server" 
                        ></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtanswer" ErrorMessage="please enter the answer" 
                        ForeColor="Maroon">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="style6">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Register" />
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                        <ProgressTemplate>
                            <asp:Image ID="Image1" runat="server" Height="36px" 
                                ImageUrl="~/images/loadingmap.gif" Width="94px" />
                            &nbsp;
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" 
                        ForeColor="#990000" Width="302px" />
                </td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>



