<%@ Page Language="C#" AutoEventWireup="true" CodeFile="星级管理.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#ff66ff">
    <form id="form1" runat="server">
    <div>
    
    </div>
    
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 99px; top: 212px; position: absolute; height: 19px; bottom: 273px;" 
            Text="员工号"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 102px; top: 267px; position: absolute; height: 14px; right: 809px;" 
            Text="任教班级"></asp:Label>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 97px; top: 313px; position: absolute; height: 14px; right: 782px;" 
            Text="参与评比项目"></asp:Label>
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 531px; top: 159px; position: absolute; bottom: 327px;" 
            Text="奖品兑换方式 "></asp:Label>
        <asp:Label ID="Label6" runat="server" 
            style="z-index: 1; left: 534px; top: 227px; position: absolute; height: 21px" 
            Text="可兑换的金额"></asp:Label>
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 528px; top: 356px; position: absolute; height: 23px" 
            Text="剩余可兑换金额"></asp:Label>
        <p>
   
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 96px; top: 158px; position: absolute; height: 27px; bottom: 319px;" 
        Text="员工姓名"></asp:Label>
    
        </p>
    
        <asp:TextBox ID="TextBox2" runat="server" 
            
        
        
        style="z-index: 1; left: 222px; top: 210px; position: absolute; height: 21px; bottom: 273px;"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" 
            
        style="z-index: 1; left: 680px; top: 224px; position: absolute; height: 24px"></asp:TextBox>
       
        <asp:TextBox ID="TextBox1" runat="server" 
            
        style="z-index: 1; left: 220px; top: 163px; position: absolute; height: 22px; width: 157px;"></asp:TextBox>
     
        <asp:TextBox ID="TextBox4" runat="server" 
            
        
        style="z-index: 1; left: 677px; top: 346px; position: absolute; height: 25px"></asp:TextBox>
 
   
 
    <asp:DropDownList ID="DropDownList1" runat="server" 
        
        style="z-index: 1; left: 213px; top: 263px; position: absolute; height: 21px; width: 138px" 
        AutoPostBack="True">
        <asp:ListItem>传统实训</asp:ListItem>
        <asp:ListItem>高校合作</asp:ListItem>
        <asp:ListItem>短训班</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        
        style="z-index: 1; left: 227px; top: 309px; position: absolute; height: 25px; width: 141px" 
        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="se" 
        DataValueField="se">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:REGISTERConnectionString %>" 
        SelectCommand="SELECT [se] FROM [PB]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList3" runat="server" 
        
        style="z-index: 1; left: 674px; top: 159px; position: absolute; height: 21px; width: 112px" 
        AutoPostBack="True" 
        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList4" runat="server" 
        
        
        style="z-index: 1; top: 153px; position: absolute; height: 23px; width: 117px; left: 840px; bottom: 332px">
    </asp:DropDownList>
 
   
    <asp:Button ID="Button1" runat="server" 
        
        style="z-index: 1; left: 783px; top: 394px; position: absolute; height: 21px;" Text="提交" 
        onclick="Button1_Click" />
 
   
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 113px; top: 366px; position: absolute" Text="星个数"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" 
        style="z-index: 1; left: 218px; top: 366px; position: absolute"></asp:TextBox>
    <asp:Label ID="Label9" runat="server" 
        style="z-index: 1; left: 526px; top: 292px; position: absolute" 
        Text="本次兑换的金额"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" 
        
        style="z-index: 1; top: 284px; position: absolute; height: 22px; left: 675px"></asp:TextBox>
 
   
    </form>
</body>
</html>
