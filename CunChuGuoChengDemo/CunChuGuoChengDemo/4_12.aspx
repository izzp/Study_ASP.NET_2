<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_12.aspx.cs" Inherits="CunChuGuoChengDemo._4_12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>添加商品类别</title>
</head>
<body>
    <form id="form1" runat="server">
     <div >
     使用存储过程，添加商品类别
     <hr />
         <asp:Label ID="Label1" runat="server" Text="类别名称"></asp:Label>
         <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
         <asp:Button ID="btnAddType" runat="server" Text="添加" 
             onclick="btnAddType_Click" />
         <br /> <br />
         <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
