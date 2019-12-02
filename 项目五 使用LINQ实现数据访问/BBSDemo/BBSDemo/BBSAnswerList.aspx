<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BBSAnswerList.aspx.cs" Inherits="BBSDemo.BBSAnswerList" Theme="default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="LinqDataSource1"  >
             <ItemTemplate>
               <p style="text-align:left; font-size:14px"><asp:Label ID="Label5" runat="server" Text='<%# Eval("bnSubject") %>' /></p>              
                <table class="ba_table">
            <tr>
                <td><div class="ba_title">
                    <asp:Label ID="lbluName" runat="server" Text='<%# Eval("Users.uName") %>' style="font-weight: 700" />&nbsp;
                    于<asp:Label ID="Label1" runat="server" Text='<%# Eval("bnAddTime") %>' />&nbsp;
                    发表</div></td>
            </tr>
            <tr>
                <td><div class="ba_content">
                    <asp:Label ID="contentLabel" runat="server" Text='<%# Eval("bnContent") %>' />
                </td>
            </tr>            
        </table>
            </ItemTemplate>
        </asp:Repeater>
        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="LinqDataSource2" >
                <ItemTemplate>
        <table class="ba_table">
            <tr>
                <td><div class="ba_title">
                    <asp:Label ID="lbluName" runat="server" Text='<%# Eval("Users.uName")%>' style="font-weight: 700" />&nbsp;
                    于<asp:Label ID="timeLabel" runat="server" Text='<%# Eval("baAddTime") %>' />&nbsp;进行回复：</div></td>
            </tr>
            <tr>
                <td><div class="ba_content">
                    <asp:Label ID="contentLabel" runat="server" Text='<%# Eval("baContent") %>' />
                </td>
            </tr>            
        </table>
        </ItemTemplate>
        </asp:Repeater>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="BBSDemo.BBSDataContext"  TableName="BBSNote" EntityTypeName="" Where="bnID == @bnID" >
            <WhereParameters>
                <asp:QueryStringParameter Name="bnID" QueryStringField="id" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="BBSDemo.BBSDataContext" EntityTypeName="" TableName="BBSAnswer" Where="bnID == @bnID"  >
            <WhereParameters>
                <asp:QueryStringParameter Name="bnID" QueryStringField="id" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
        <asp:TextBox ID="txtbaContent" runat="server" Height="69px" TextMode="MultiLine" Width="232px"></asp:TextBox>
        <asp:Button ID="bnSubject" runat="server" OnClick="bnSubject_Click" Text="回复主题" />
    
    </div>
    </form>
</body>
</html>
