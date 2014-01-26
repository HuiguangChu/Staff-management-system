<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chat_say.aspx.cs" Inherits="chat_say" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p>
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 273px; top: 107px; position: absolute" Text="请发言："></asp:Label>
    </p>
    <asp:TextBox ID="say" runat="server" 
        style="z-index: 1; left: 390px; position: absolute; top: 80px; height: 86px; width: 246px"></asp:TextBox>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 554px; top: 197px; position: absolute" Text="发送" />
    </p>
    </form>
</body>
</html>
