<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineChatRoom.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户登录</title>
    <style type="text/css">
        .style1
        {
            width: 845px;
            font-size:small;
        }
        .style3
        {
            width: 120px;
             font-size:small;
            text-align: right;
        }
        .auto-style1 {
            width: 120px;
            font-size: small;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td align="center" colspan="2">
                会员登录</td>
        </tr>
        <tr>
            <td align="right" class="style3">
                用户名：</td>
            <td style="width:180px">
                <asp:TextBox ID="txtUName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td ="right" class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 密&nbsp;码：</td>
            <td style="width:180px">
                <asp:TextBox ID="txtUPwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <asp:Button ID="btnLogin" runat="server" Text="确定" 
                    onclick="btnLogin_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="取消" />
            </td>
        </tr>
    </table>
 
    </form>
</body>
</html>
