<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChatRoom.aspx.cs" Inherits="OnlineChatRoom._3_10.ChatRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>简易聊天室</title>
    <style type="text/css">
        .style1
        {
            height: 39px;
        }
        .style2
        {
            height: 32px;
        }
        .style3
        {
            height: 33px;
        }
    </style>
</head>
<body><form id="form1" runat="server">
 <div style="height: 343px; text-align: center;">
    <table width="400" border="1" cellspacing="0" cellpadding="0" style="font-size:small">
      <tr>
        <th colspan="3" scope="col" class="style2">
            <asp:Label ID="Label1" runat="server" 
                Text="快乐联盟聊天室" Font-Bold="True"></asp:Label></th>
      </tr>
      <tr>
        <td colspan="3" align="left" class="style3" valign="bottom">
            <asp:Label ID="lblOnlineNum" runat="server"></asp:Label></td>
      </tr>
      <tr>
        <td colspan="3">

            <asp:TextBox ID="txtChatRoom" runat="server" Height="211px" Width="383px" 
                TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
          
      </td>
      </tr>
      <tr>
        <td width="55" class="style1"><asp:Label ID="lblName" runat="server"></asp:Label></td>
        <td width="261" class="style1"><asp:TextBox ID="txtChat" runat="server" 
                Width="245px"></asp:TextBox></td>
        <td width="76" align="center" class="style1"><asp:Button ID="btnSend" 
                runat="server" Text="发送" Width="70px" onclick="btnSend_Click" />        </td>
      </tr>
  </table>    
  </div>
  </form>
</body>
</html>
