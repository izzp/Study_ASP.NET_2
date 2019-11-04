<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_8.aspx.cs" Inherits="DataSetDemo._4_8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     绑定集合数据
     <hr />
     <div class="mid">
           <div class="left"> 
           <span class="font">绑定DropDownList</span>  <br />
           <asp:DropDownList ID="ddlGoodType" runat="server">
         </asp:DropDownList>   </div>          
         <div class="left">
         <span class="font">绑定CheckBoxList</span>  <br />
         <asp:CheckBoxList ID="chkGoodType" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Font-Size="Small">
         </asp:CheckBoxList>   
     </div>
    </div> 
    </form>
</body></html>
