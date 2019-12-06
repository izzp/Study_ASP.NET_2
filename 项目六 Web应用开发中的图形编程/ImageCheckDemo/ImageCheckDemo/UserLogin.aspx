<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="ImageCheckDemo.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width:300px; text-align: left;" >
        <tr>
            <td colspan="2" 
                style="" class="td_content">
                <asp:Label ID="lblUser" runat="server" Font-Bold="True" Text="[用户登录]" 
                    style="color: #0026ff"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="td_content">
                <asp:Label ID="Label3" runat="server" Text="用户名："></asp:Label>
            </td>
            <td class="td_content">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="textbox_content" 
                   ></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="td_content">
                <asp:Label ID="Label4" runat="server" Text="密码："></asp:Label>
            </td>
            <td class="td_content">
                <asp:TextBox ID="txtUserPwd" runat="server" TextMode="Password" 
                    CssClass="textbox_content"></asp:TextBox>
            </td>
        </tr>
        <tr >
            <td class="td_content" >
                <asp:Label ID="Label5" runat="server" Text="验证码："></asp:Label>
            </td>
            <td class="td_content" >
                <asp:TextBox ID="txtCheckCode" runat="server" 
                    CssClass="textbox_content" Width="65px"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" ImageUrl="~/CheckCode.aspx" />
            </td>
        </tr>
        <tr>
            <td class="td_content" colspan="2">
                <asp:Button ID="btnConfirm" runat="server" Text="确定" Width="44px" 
                    onclick="btnConfirm_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="取消" Width="43px" 
                    onclick="btnCancel_Click" />
            </td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
