<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_7.aspx.cs" Inherits="项目八_jQuery实现网页特效._8_7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="scripts/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("img").hover(function () {
                $("div").hide();//使用hide()方法隐藏文本
            }, function () {
                $("div").show();//使用show()方法显示文本
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <img src="img/1.png" />
    <div>very beautiful!</div>
    </div>
    </form>
</body>
</html>
