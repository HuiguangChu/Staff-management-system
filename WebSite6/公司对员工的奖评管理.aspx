<%@ Page Language="C#" AutoEventWireup="true" CodeFile="公司对员工的奖评管理.aspx.cs" Inherits="公司对员工的奖评管理" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    

    
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#00ffff">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        
        
        style="z-index: 1; left: 240px; top: 210px; position: absolute; width: 138px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        CausesValidation="True" DataSourceID="SqlDataSource1" 
        DataTextField="员工姓名" DataValueField="员工姓名" 
        ontextchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGISTERConnectionString %>" 
        SelectCommand="SELECT [员工姓名] FROM [EMP]"></asp:SqlDataSource>
    
    <p>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; top: 367px; position: absolute; height: 32px; left: 110px; width: 93px;" 
            Text="查询记录" onclick="Button1_Click" />
    </p>
    <asp:GridView ID="GridView1" runat="server" 
        
        style="z-index: 1; left: 519px; top: 89px; position: absolute; height: 378px; width: 448px" 
        AutoGenerateColumns="False">
    </asp:GridView>
    <p>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 100px; top: 209px; position: absolute; right: 648px; height: 20px;" 
        Text="员工姓名"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="z-index: 1; left: 311px; top: 361px; position: absolute; height: 39px; width: 99px;" 
            Text="修改记录" />
    </p>
    </form>
</body>
</html>
