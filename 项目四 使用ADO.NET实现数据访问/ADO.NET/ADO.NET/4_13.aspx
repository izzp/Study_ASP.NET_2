<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_13.aspx.cs" Inherits="CunChuGCDemo._4_13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    使用事物，当对某一商品时，该商品的评价数加1<hr/>
        <asp:Button ID="btnTranTest" runat="server" Text="评价" OnClick="btnTranTest_Click" />
    </div>
    </form>
</body>
</html>
