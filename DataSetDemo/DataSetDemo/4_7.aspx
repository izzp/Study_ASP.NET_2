<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_7.aspx.cs" Inherits="DataSetDemo._4_7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
        绑定数据
        <hr />
        成员值： <%# uName %> <br />                      
        成员方法返回值：<%# returnInt() %>         <br />              
        计算表达式：<%# "ASP"+".NET" %>       <br />             
        控件属性： <%# Label1.Text %>        <br />                
        虚拟应用程序根路径：<%# Request.ApplicationPath %>    <br />        
        配置文件数据：<asp:Label ID="Label1" runat="server" Text= "<% $AppSettings:test %>"></asp:Label>
        <br /> 
    </div>
    </form>
</body>
</html>
