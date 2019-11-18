<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_6.aspx.cs" Inherits="DataSetDemo._4_6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br/><br/><br/>
        查看商品信息表中的数据<hr />
        <asp:Label ID="lblView" runat="server" Text=""></asp:Label><br/>
        <asp:Button ID="btnView" runat="server" Text="查看" OnClick="btnView_Click" />
    </div>
    </form>
</body>
</html>
