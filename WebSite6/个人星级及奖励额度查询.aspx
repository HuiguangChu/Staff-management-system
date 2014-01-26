<%@ Page Language="C#" AutoEventWireup="true" CodeFile="个人星级及奖励额度查询.aspx.cs" Inherits="个人星级及奖励额度查询" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 130px; top: 168px; position: absolute" Text="姓名"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 121px; top: 243px; position: absolute" Text="员工号"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        style="z-index: 1; left: 226px; top: 166px; position: absolute; "></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 232px; top: 243px; position: absolute"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        
        style="z-index: 1; left: 489px; top: 83px; position: absolute; height: 365px; width: 867px" 
        CellPadding="4" ForeColor="#333333" GridLines="None" SelectedIndex="1">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField></asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 338px; top: 340px; position: absolute" 
        Text="确定" />
    </form>
</body>
</html>
