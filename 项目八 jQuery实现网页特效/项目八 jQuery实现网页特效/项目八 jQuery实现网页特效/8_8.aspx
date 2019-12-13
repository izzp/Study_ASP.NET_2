<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_8.aspx.cs" Inherits="项目八_jQuery实现网页特效._8_8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="scripts/jquery-3.4.1.min.js"></script>
        <script type="text/javascript">
            $(function () {
                $("#div1").fadeOut(3000);//在3000毫秒中淡出文字
                $("#div2").fadeIn(3000);//在3000毫秒中淡入文字
            });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="div1">这是第一行文本</div>
    <!--设置display:none，页面加载时第二行文字不显示-->
    <div id="div2" style="display:none">这是第二行文本</div>
    </div>
    </form>
</body>
</html>
