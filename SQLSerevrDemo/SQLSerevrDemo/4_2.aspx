<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_2.aspx.cs" Inherits="SQLSerevrDemo._4_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     创建数据表
    <hr />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br /><br />
        <asp:Button ID="CreateTable" runat="server" Text="创建Test表" 
            onclick="CreateTable_Click" />
&nbsp;<asp:Button ID="DelTable" runat="server" Text="删除Test表" onclick="DelTable_Click" />
    
    </div>
    </form>
</body>
</html>
