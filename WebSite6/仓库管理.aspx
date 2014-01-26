<%@ Page Language="C#" AutoEventWireup="true" CodeFile="仓库管理.aspx.cs" Inherits="仓库管理" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#00ffff">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 139px; top: 149px; position: absolute" Text="所兑换的奖品"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        
        style="z-index: 1; left: 265px; top: 149px; position: absolute; height: 22px; width: 109px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        style="z-index: 1; left: 424px; top: 153px; position: absolute; height: 24px; width: 135px">
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 501px; top: 260px; position: absolute" Text="确定" 
        onclick="Button1_Click" BackColor="Blue" />
    </form>
</body>
</html>
