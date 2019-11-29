<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditUsers.aspx.cs" Inherits="UsersManagerDemo.EditUsers" Theme="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div>    
        【修改会员】
        <hr />
        <div id="div1">
        <table class="tb_content">
            <tr><td align="right" width="25%" >用户名：</td><td ><asp:TextBox ID="txtuName" runat="server"></asp:TextBox> </td></tr>
            <tr><td align="right">密码：</td><td><asp:TextBox ID="txtuPwd" runat="server"></asp:TextBox> </td></tr>
            <tr><td align="right">姓名：</td><td><asp:TextBox ID="txtuRealName" runat="server"></asp:TextBox> </td></tr>
            <tr><td align="right">性别：</td><td>
                <asp:RadioButtonList ID="rbluSex" runat="server" RepeatDirection="Horizontal" BorderStyle="None" BorderWidth="0px" CssClass="nobordertb">
                    <asp:ListItem Selected="True">男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:RadioButtonList> </td></tr>
            <tr><td align="right">年龄：</td><td><asp:TextBox ID="txtuAge" runat="server"></asp:TextBox> </td></tr>
            <tr><td align="right">爱好：</td><td>
                <asp:CheckBoxList ID="cbluHobby" runat="server" CssClass="nobordertb" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>看书</asp:ListItem>
                    <asp:ListItem>上网</asp:ListItem>
                    <asp:ListItem>音乐</asp:ListItem>
                    <asp:ListItem>打球</asp:ListItem>
                    <asp:ListItem>跑步</asp:ListItem>
                    <asp:ListItem>游泳</asp:ListItem>
                </asp:CheckBoxList></td></tr>
            <tr><td align="right">邮箱：</td><td><asp:TextBox ID="txtuEmail" runat="server"></asp:TextBox> </td></tr>
            <tr><td align="right">QQ：</td><td><asp:TextBox ID="txtuQQ" runat="server"></asp:TextBox> </td></tr>
            <tr><td align="right">手机：</td><td><asp:TextBox ID="txtuPhone" runat="server"></asp:TextBox></td></tr>
            <tr><td align="right">头像：</td><td>
                <asp:DropDownList ID="ddluImage" runat="server" OnSelectedIndexChanged="ddluImage_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem>1.gif</asp:ListItem>
                    <asp:ListItem>2.gif</asp:ListItem>
                    <asp:ListItem>3.gif</asp:ListItem>
                    <asp:ListItem>4.gif</asp:ListItem>
                    <asp:ListItem>5.gif</asp:ListItem>
                    <asp:ListItem>6.gif</asp:ListItem>
                    <asp:ListItem>7.gif</asp:ListItem>
                    <asp:ListItem>8.gif</asp:ListItem>
                    <asp:ListItem>9.gif</asp:ListItem>
                </asp:DropDownList>
                <asp:Image ID="imguImage" runat="server" Height="40px" ImageUrl="~/Images/userico/1.gif" Width="40px" /></td></tr>
            <tr><td align="right"><asp:Button ID="Button1" Text="修改" runat="server" OnClick="butAdd_Click" /></td><td></td></tr>
        </table>
            </div>
    </div>
    </form>
</body>
</html>
