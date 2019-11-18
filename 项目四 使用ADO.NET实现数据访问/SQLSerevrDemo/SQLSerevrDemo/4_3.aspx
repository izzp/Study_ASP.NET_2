<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_3.aspx.cs" Inherits="SQLSerevrDemo._4_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     统计注册会员人数
    <hr />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br /><br />
        <asp:Button ID="CountUsers" runat="server" Text="统计会员人数" 
            onclick="CountUsers_Click" />
    </div>
    </form>
</body>
</html>
