<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5_7_BBSNote.aspx.cs" Inherits="项目五_使用LINQ实现数据访问._5_7_BBSNote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>留言板</title>
    <style>
        body {
           font-size:12px;
        }
        td {
            padding: 5px;
        }
        .title td {
            background:#f0f0f0;            
        }
        
        .table {
            border:1px solid #ccc;
            margin:5px 5px 5px 5px;
            width:500px;
        }
        
        .table th {
            background-color:#8d8d8d;
            color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="项目五_使用LINQ实现数据访问.BBSDataContext" EntityTypeName="" TableName="BBSNote">
        </asp:LinqDataSource>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="LinqDataSource1">
            <HeaderTemplate>
                <table class="table"><tr><th style="width:45%">标题</th><th style="width:15%">发表人</th><th>发表时间</th><th></th></tr>
            </HeaderTemplate>
            <ItemTemplate>
               <tr><td style="text-align:left"><asp:Label ID="lblSubject" runat="server" Text='<%# Eval("bnSubject") %>'/></td>
                   <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("Users.uName") %>'/></td>          
                   <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("bnAddTime") %>'/></td>
                    <td><a ><a href="#">查看</a></a></td>
               </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr  class="title"><td  style="text-align:left"><asp:Label ID="lblSubject" runat="server" Text='<%# Eval("bnSubject") %>'/></td>
                   <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("Users.uName") %>'/></td>          
                   <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("bnAddTime") %>'/></td>
                    <td><a >查看</a></td>
               </tr>
            </AlternatingItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    
    </div>
    </form>
</body>
</html>
