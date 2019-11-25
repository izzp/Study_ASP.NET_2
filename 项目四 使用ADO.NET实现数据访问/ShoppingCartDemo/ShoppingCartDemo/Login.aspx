<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCartDemo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>会员登录
    </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 264px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>【会员登录】</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                <asp:Label ID="lblUName" runat="server" Text="用户名：" style="text-align: right" />
                </td>
                <td>
                <asp:TextBox ID="txtUName" runat="server" />
                <asp:RequiredFieldValidator ID="reqUName" runat="server" 
                    ControlToValidate="txtUName" ErrorMessage="用户名不能为空！"  Text="*" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                <asp:Label ID="lblUPwd" runat="server" Text="密码：" />
                </td>
                <td>
                <asp:TextBox ID="txtUPwd" runat="server" TextMode="Password" />
                <asp:RequiredFieldValidator ID="reqUPwd" runat="server" 
                    ControlToValidate="txtUPwd" ErrorMessage="密码不能为空！" Text="*" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                <asp:CheckBox ID="cbState" runat="server" Text="两周内不用登录" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>  <asp:Button ID="btnLogin" runat="server" Text="登  录" OnClick="btnLogin_Click" 
     /> <asp:Button ID="btnCancel" runat="server" Text="取  消" /> <asp:HyperLink ID="hlkRegister" runat="server" Text="注册"  NavigateUrl="Register.aspx" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
