<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_15.aspx.cs" Inherits="DataListDemo._4_15" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DataList控件分页实现</title>
    <style type="text/css">
        body{
            font-size:0.8em;
        }
        a{
            text-decoration:none;
        }
        .td{
            width:200px;
            height:300px;
        }
        .tdrow{
            height:30px;
            vertical-align:top;
            text-align:center;
        }
        .tdr{
            width:80px;
            padding:5px;
        }
        .tdl{
            width:110px;
            padding:5px;
        }
        .img{
            width:200px;
            height:200px;
            border:0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        使用DataList控件显示商品信息<hr/>
        <div>
            <asp:DataList ID="dlstGoods" runat="server" RepeatColumns="3" DataKeyField="gdID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table class="tb">
                        <tr>
                            <td colspan="2">
                                <a href="GoodsDetail.aspx?gdID=<%# Eval("gdID")%>"></a>
                                <asp:Image ID="Image1" runat="server" ToolTip='<%# Eval("gdName")%>'
                                    CssClass="img" ImageUrl='<%# Eval("gdImage","images/goods/{0}")%>'/> 
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="tdrow">
                               <a href="GoodsDetail.aspx?gdID=<%# Eval("gdID")%>"></a>
                                <asp:Label ID="lbl1" runat="server" Text='<%# Eval("gdName")%>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdl">价格：
                                <asp:Literal ID="lbl2" runat="server" Text='<%# Eval("gdPrice","{0:C}")%>'></asp:Literal>
                                <td class="tdr">运费：
                                    <asp:Literal ID="lt1" runat="server" Text='<%# Eval("gdFeight","{0:C}")%>'></asp:Literal>
                                </td>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdl">已售：
                                <asp:Literal ID="lt2" runat="server" Text='<%# Eval("gdSaleQty","{0}件")%>'></asp:Literal>
                            </td>
                            <td class="tdr">评价数：
                                <asp:Literal ID="lt3" runat="server" Text='<%# Eval("gdEvNum")%>'></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:Label ID="lblCurPage" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblTotalPage" runat="server" Text="Label"></asp:Label>
            <asp:LinkButton ID="lbtnPre" runat="server" CommandName="Pre" OnCommand="LinkBtnClick">上一页</asp:LinkButton>
            <asp:LinkButton ID="lbtnNext" runat="server" CommandName="Next" OnCommand="LinkBtnClick">下一页</asp:LinkButton>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:smdb %>" SelectCommand="SELECT * FROM [Goods]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
