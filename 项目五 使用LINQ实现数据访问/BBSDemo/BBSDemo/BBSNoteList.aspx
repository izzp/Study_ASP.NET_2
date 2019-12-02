<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BBSNoteList.aspx.cs" Inherits="BBSDemo.BBSNoteList" Theme="default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Repeater ID="Repeater1" runat="server"  DataSourceID="LinqDataSource1">
                        <HeaderTemplate>
                <table class="table"><tr><th style="width:45%">标题</th><th style="width:15%">发表人</th><th>发表时间</th><th></th></tr>
            </HeaderTemplate>
            <ItemTemplate>
               <tr><td style="text-align:left"><asp:Label ID="lblSubject" runat="server" Text='<%# Eval("bnSubject") %>'/></td>
                   <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("Users.uName") %>'/></td>          
                   <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("bnAddTime") %>'/></td>
                    <td><a href="BBSAnswerList.aspx?id=<%#Eval("bnID")%>">查看</a></td>
               </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr  class="title"><td  style="text-align:left"><asp:Label ID="lblSubject" runat="server" Text='<%# Eval("bnSubject") %>'/></td>
                   <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("Users.uName") %>'/></td>          
                   <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("bnAddTime") %>'/></td>
                    <td><a href="BBSAnswerList.aspx?id=<%#Eval("bnID")%>">查看</a></td>
               </tr>
            </AlternatingItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>

    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="BBSDemo.BBSDataContext" EntityTypeName="" TableName="BBSNote">
        </asp:LinqDataSource>

    
        <br />
        主题：<asp:TextBox ID="txtbnSubject" runat="server"></asp:TextBox>
        <br />
        内容：<asp:TextBox ID="txtbnContent" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="留言" />

    
    </div>
    </form>
</body>
</html>
