<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdLogin.aspx.cs" Inherits="AdminLoginDemo.AdLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 254px;
        }
        .auto-style3 {
            width: 437px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <td colspan="3" style="text-align:center;">
        &nbsp;&nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2" style="text-align: center">后台登录</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">用户名：</td>
                <td class="auto-style2" style="text-align: center"><asp:TextBox ID="txtName" runat="server" Width="204px"></asp:TextBox>
                </td>
                <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="用户名不能为空" Text="*" ControlToValidate="txtName" ForeColor="Red" style="text-align: left"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style3">密码：</td>
                <td class="auto-style2" style="text-align: center"><asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="202px" style="text-align: center"></asp:TextBox>
                </td>
                <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="密码不能为空" Text="*" ControlToValidate="txtPwd" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style3">管理员类型：</td>
                <td class="auto-style2" style="text-align: center"><asp:DropDownList ID="ddlType" runat="server">
            <asp:ListItem Value="0">一般管理员</asp:ListItem>
            <asp:ListItem Value="1">系统管理员 </asp:ListItem>
        </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;&nbsp;<asp:Button ID="btnConfirm" runat="server" Text="登录" 
            onclick="btnConfirm_Click" style="text-align: right; height: 21px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="取消" onclick="btnCancel_Click" CausesValidation="false" style="text-align: left" /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" />    
    </div>
    </form>
</body>
</html>
