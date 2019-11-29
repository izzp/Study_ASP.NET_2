<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5_2.aspx.cs" Inherits="项目五_使用LINQ实现数据访问._5_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>商品类别界面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="gvGoodType" runat="server" AutoGenerateColumns="False" DataKeyNames="tID">
            <Columns>
                <asp:BoundField DataField="tID" HeaderText="类别编号" />
                <asp:BoundField DataField="tName" HeaderText="类别名称" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
