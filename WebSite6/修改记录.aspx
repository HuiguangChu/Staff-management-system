<%@ Page Language="C#" AutoEventWireup="true" CodeFile="修改记录.aspx.cs" Inherits="修改记录" %>

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
        <asp:Button ID="Button2" runat="server" 
            style="z-index: 1; left: 372px; top: 327px; position: absolute" Text="减少" />
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 59px; top: 159px; position: absolute; right: 804px" 
            Text="参与评比的项目"></asp:Label>
    </p>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        
        style="z-index: 1; left: 200px; top: 156px; position: absolute; height: 24px; width: 118px">
    </asp:DropDownList>
 
    <p style="height: 0px">
        <asp:Label ID="Label2" runat="server" 
            
            style="z-index: 1; left: 80px; top: 214px; position: absolute; right: 847px;" 
            Text="星级数"></asp:Label>
    </p>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 189px; top: 214px; position: absolute; height: 21px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 261px; top: 330px; position: absolute" Text="增加" />
    </form>
</body>
</html>
