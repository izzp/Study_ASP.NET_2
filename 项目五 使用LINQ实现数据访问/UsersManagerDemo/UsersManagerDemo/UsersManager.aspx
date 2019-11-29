<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersManager.aspx.cs" Inherits="UsersManagerDemo.UsersManager" Theme="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>   
        【会员管理】
        <hr />
        <asp:Button ID="btnAdd" runat="server" Text="添加会员" OnClick="btnAdd_Click" />
        <br /><br />
        <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="uID" OnRowDeleting="gvUsers_RowDeleting" >
            <Columns>
                <asp:BoundField DataField="uID" HeaderText="编号" />
                <asp:BoundField DataField="uName" HeaderText="用户名" />
                <asp:BoundField DataField="uRealName" HeaderText="姓名" />
                <asp:BoundField DataField="uSex" HeaderText="性别" />
                <asp:BoundField DataField="uAge" HeaderText="年龄" />
                <asp:BoundField DataField="uHobby" HeaderText="爱好" />
                 <asp:BoundField DataField="uRegTime" HeaderText="注册时间" DataFormatString="{0:yyyy/MM/dd}" />
                <asp:TemplateField>
                    <ItemTemplate>
                        &nbsp;<asp:HyperLink ID="hlinkEdit" runat="server" NavigateUrl='<%# Bind("uID","EditUsers.aspx?id={0}") %>' >编辑</asp:HyperLink>
                        &nbsp;<asp:LinkButton ID="lbtDelete" runat="server" CommandName="delete">删除</asp:LinkButton>&nbsp;
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>    
    </div>
    </form>
</body>
</html>
