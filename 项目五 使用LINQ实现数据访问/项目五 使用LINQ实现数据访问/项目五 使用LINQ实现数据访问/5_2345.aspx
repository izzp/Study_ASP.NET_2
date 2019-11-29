<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5_2345.aspx.cs" Inherits="项目五_使用LINQ实现数据访问._5_2" %>

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
        <hr />
        插入数据：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="插入数据" OnClick="Button1_Click" />
        <hr />

        修改前：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        修改后：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" style="text-align: center" Text="确认修改" />

        <hr />
        <br />
        删除数据：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="确认删除" />
    </form>
</body>
</html>
