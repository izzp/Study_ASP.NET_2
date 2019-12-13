<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_2.aspx.cs" Inherits="项目八_jQuery实现网页特效._8_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>汽车品牌列表展示</title>
 <link rel="stylesheet" type="text/css" href="css/default.css" /> 
    <script src="scripts/jquery-3.4.1.min.js"></script><!-- 引入jQuery -->
    <script type="text/javascript">
        $(function () {
            //文档加载完毕之后执行下列程序
            var $category = $('ul li:gt(2)');//获得索引值大于2的品牌集合对象	
            $category.hide();//隐藏上面获取到的jQuery对象
            var $toggleBtn = $('div.showmore > a');//获取“全部显示”a元素
            $toggleBtn.click(function () {
                if ($category.is(":visible")) {
                    $category.hide();//隐藏$category
                    $(this).find('span')
                        .text("全部显示");//改变文本
                } else {
                    $category.show();//显示$category
                    $(this).find('span')
                        .text("精简显示");//改变文本
                }
                return false;//超链接不跳转
            });
        });
    </script>
</head>
<body>
    <div class="listofbrand">
    <ul>
        <li><a href="#">别克</a></li>
        <li><a href="#">宝马</a></li>
        <li><a href="#">东风</a></li>
        <li><a href="#">长安</a></li>
        <li><a href="#">吉利</a></li>
        <li><a href="#">奇瑞</a></li>
    </ul>
<div class="showmore">
<a href="more.html"><span>全部显示</span></a>
</div>
</div>
</body>
</html>
