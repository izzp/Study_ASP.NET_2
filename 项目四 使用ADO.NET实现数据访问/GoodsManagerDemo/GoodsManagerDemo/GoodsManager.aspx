<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoodsManager.aspx.cs" Inherits="GoodsManagerDemo.GoodsManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    【商品管理】
    <hr />
    </div>
    <div>
        <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="添加商品 " />
    </div>
    <br /><br />
    <div>
     <asp:GridView ID="grdGoods" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="gdID" BorderWidth="1px" AllowPaging="True"  DataSourceID="sqlGoods" AllowSorting="True"
            PageSize="5" >
            <HeaderStyle CssClass="hstyle" />
        <Columns>
            <asp:BoundField DataField="gdCode" ItemStyle-CssClass="center" HeaderText="编号">
            </asp:BoundField>             
            <asp:BoundField DataField="tName" ItemStyle-CssClass="center"  HeaderText="类别">
            </asp:BoundField>

            <asp:HyperLinkField DataNavigateUrlFields="gdID"  ItemStyle-CssClass="name" HeaderText="名称"
                DataNavigateUrlFormatString="GoodsDetails.aspx?gdid={0}" 
                DataTextField="gdName" >
            </asp:HyperLinkField>
            <asp:BoundField DataField="gdPrice" ItemStyle-CssClass="center" HeaderText="价格" DataFormatString="{0:C}"></asp:BoundField>
            <asp:BoundField DataField="gdQuantity" ItemStyle-CssClass="center" HeaderText="库存量"></asp:BoundField>        
            <asp:BoundField DataField="gdAddTime" ItemStyle-CssClass="center" HeaderText="上架时间" DataFormatString="{0:d}"></asp:BoundField>         
            <asp:TemplateField HeaderText="编辑" ItemStyle-CssClass="center">
                <ItemTemplate>
                    <a href='EditGoods.aspx?gdid=<%#Eval("gdID")%>'> 
                        <asp:Image ID="Image1" runat="server" CssClass="noborder" ToolTip="编辑商品" ImageUrl="images/icon/mod.gif"/>
                    </a> &nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton2" runat="server" ToolTip="删除商品" 
                        ImageUrl="images/icon/delete.gif" CommandName="delete" OnClientClick="return confirm('确定要删除该商品?');" />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <PagerSettings FirstPageText="首页" LastPageText="末页" 
            Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
  
    <asp:SqlDataSource ID="sqlGoods" runat="server" 
        ConnectionString="<%$ ConnectionStrings:smdb %>" 
            SelectCommand="SELECT Goods.*,tName FROM Goods join GoodsType on Goods.tID=GoodsType.tID ORDER BY gdAddTime"
            DeleteCommand="DELETE FROM Goods where gdID=@gdID" ProviderName="System.Data.SqlClient" >
            <DeleteParameters>
                <asp:Parameter Name="gdID" Type="Int32" />
            </DeleteParameters>
    </asp:SqlDataSource>

</div>
    </form>
</body>
</html>
