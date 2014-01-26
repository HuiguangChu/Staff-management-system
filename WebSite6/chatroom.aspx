<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chatroom.aspx.cs" Inherits="chatroom" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>在线聊天室</title>
</head>
<frameset  rows="*,40%">
	    <frame  name="message" src="chat_message.aspx"></frame>
	    <frame name="say" src="chat_say.aspx"></frame></frameset>
<body>
    <form id="form2" runat="server">
    <div>
        <asp:Label ID="Label55" runat="server" Height="28px" Style="z-index: 100; left: 135px;
            position: absolute; top: 111px" Text="Label" Width="58px" ForeColor="Blue"></asp:Label>
        &nbsp;
        <asp:Label ID="Label3" runat="server" ForeColor="#FF8000" Height="22px" Style="z-index: 107;
            left: 126px; position: absolute; top: 214px" Text="Label" Width="64px"></asp:Label>
         
        
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="方正姚体" Font-Size="X-Large"
            ForeColor="Blue" Style="z-index: 106; left: 347px; position: absolute; top: 40px"
            Text="聊天室系统欢迎您！"></asp:Label>
         
    </div>
    </form>
</body>
</html>