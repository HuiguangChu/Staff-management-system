<%@ Page Language="C#" AutoEventWireup="true" CodeFile="会员登录.aspx.cs" Inherits="会员登录" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#3366ff">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p>
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 268px; top: 121px; position: absolute; height: 14px" 
            Text="会员姓名"></asp:Label>
    </p>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 401px; top: 119px; position: absolute"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 489px; top: 288px; position: absolute" Text="登录" 
        onclick="Button1_Click" />
    </form>
</body>
</html>
