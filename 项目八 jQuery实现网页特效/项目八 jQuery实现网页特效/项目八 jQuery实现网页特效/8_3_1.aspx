<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_3_1.aspx.cs" Inherits="项目八_jQuery实现网页特效._8_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="scripts/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var ul_html = $("ul").html();//获取ul标签内的HTML代码
            ul_html += "<li title='看书'>看书</li>";//增加看书这个选项的代码
            $("ul").html(ul_html);
        });
    </script>
</head>
<body>
    <p title="选择你最喜欢的活动。">你的兴趣爱好是？</p>
    <ul>
        <li title="跳舞">跳舞</li>
        <li title="唱歌">唱歌</li>
        <li title="画画">画画</li>
        <li title="上网">上网</li>
    </ul>
</body>
</html>
