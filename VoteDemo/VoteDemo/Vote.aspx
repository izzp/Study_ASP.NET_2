<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vote.aspx.cs" Inherits="VoteDemo.Vote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
  <form id="form1" runat="server">
  <strong>新闻人物投票系统</strong>
           <strong>注意:</strong>
            <asp:Label ID="lblState" runat="server" ></asp:Label>
                <asp:RadioButtonList ID="rbtlVote" 
                    runat="server" RepeatColumns="2" 
                        RepeatDirection="Horizontal" Width="235px" Height="133px">
              <asp:ListItem>张玉杰</asp:ListItem>
              <asp:ListItem>李明达</asp:ListItem>
              <asp:ListItem>王瑜兰</asp:ListItem>
              <asp:ListItem>赵志奇</asp:ListItem>
              <asp:ListItem>马伟明</asp:ListItem>
              <asp:ListItem>程超</asp:ListItem>
              <asp:ListItem>刘平真</asp:ListItem>
              <asp:ListItem>张群英</asp:ListItem>
              <asp:ListItem>王子文</asp:ListItem>
              <asp:ListItem>杨波</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="btnVote" runat="server"  Text="投票" OnClick="btnVote_Click" />
            <asp:Button ID="btnView" runat="server"  Text="查看" OnClick="btnView_Click" />
            <asp:Label ID="lblView" runat="server"></asp:Label>
    </form>
</body>
</html>
