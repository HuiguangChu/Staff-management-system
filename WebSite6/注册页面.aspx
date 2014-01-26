<%@ Page Language="C#" AutoEventWireup="true" CodeFile="注册页面.aspx.cs" Inherits="注册页面" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#0099cc">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 337px; top: 116px; position: absolute" Text="姓名"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 319px; top: 174px; position: absolute" Text="身份证号"></asp:Label>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 342px; top: 245px; position: absolute; height: 22px; width: 41px; bottom: 237px" 
        Text="性别"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 493px; top: 108px; position: absolute"></asp:TextBox>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 494px; top: 167px; position: absolute"></asp:TextBox>
    </p>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
        style="z-index: 1; left: 544px; top: 223px; position: absolute; height: 26px; width: 74px">
        <asp:ListItem>男</asp:ListItem>
        <asp:ListItem>女</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 325px; top: 304px; position: absolute; height: 16px" 
        Text="联系电话"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" 
        style="z-index: 1; left: 514px; top: 300px; position: absolute"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 580px; top: 447px; position: absolute; height: 21px" 
        Text="注册" />
    </form>
</body>
</html>
