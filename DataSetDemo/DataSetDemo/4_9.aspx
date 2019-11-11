<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4_9.aspx.cs" Inherits="DataSetDemo._4_9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     使用数据源控件实现商品信息显示
     <hr />
     <div>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:smdb %>" 
             SelectCommand="SELECT [gdID], [gdCode], [gdName], [gdPrice] FROM [Goods]" 
             DeleteCommand="DELETE FROM [Goods] WHERE [gdID] = @gdID" 
             InsertCommand="INSERT INTO [Goods] ([gdCode], [gdName], [gdPrice]) VALUES (@gdCode, @gdName, @gdPrice)" 
             UpdateCommand="UPDATE [Goods] SET [gdCode] = @gdCode, [gdName] = @gdName, [gdPrice] = @gdPrice WHERE [gdID] = @gdID" OnSelecting="SqlDataSource1_Selecting">
             <DeleteParameters>
                 <asp:Parameter Name="gdID" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="gdCode" Type="String" />
                 <asp:Parameter Name="gdName" Type="String" />
                 <asp:Parameter Name="gdPrice" Type="Double" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="gdCode" Type="String" />
                 <asp:Parameter Name="gdName" Type="String" />
                 <asp:Parameter Name="gdPrice" Type="Double" />
                 <asp:Parameter Name="gdID" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
             DataSourceID="SqlDataSource1" DataKeyNames="gdID" AllowPaging="True" 
             EnableSortingAndPagingCallbacks="True" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True">
             <Columns>
                 <asp:BoundField DataField="gdID" HeaderText="gdID" 
                     SortExpression="gdID" InsertVisible="False" ReadOnly="True" />
                 <asp:BoundField DataField="gdCode" HeaderText="gdCode" 
                     SortExpression="gdCode" />
                 <asp:BoundField DataField="gdName" HeaderText="gdName" 
                     SortExpression="gdName" />
                 <asp:BoundField DataField="gdPrice" HeaderText="gdPrice" 
                     SortExpression="gdPrice" />
             </Columns>
         </asp:GridView>
     </div>
    </form>
</body>
</html>
