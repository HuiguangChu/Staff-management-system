<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuye.aspx.cs" Inherits="zhuye" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />


     

<script type="text/javascript"><!--    //--><![CDATA[//><!--
    function menuFix() {
        var sfEls = document.getElementById("menu").getElementsByTagName("li");
        for (var i = 0; i < sfEls.length; i++) {
            sfEls[i].onmouseover = function () {
                this.className += (this.className.length > 0 ? " " : "") + "sfhover";
            }
            sfEls[i].onMouseDown = function () {
                this.className += (this.className.length > 0 ? " " : "") + "sfhover";
            }
            sfEls[i].onMouseUp = function () {
                this.className += (this.className.length > 0 ? " " : "") + "sfhover";
            }
            sfEls[i].onmouseout = function () {
                this.className = this.className.replace(new RegExp("( ?|^)sfhover\\b"),
"");
            }
        }
    }
    window.onload = menuFix;
    //--><!]]></script>
<style type="text/css">

#container { width:1400px; height:1000;}



#header { height:60px; 
background:blue; margin-bottom:5px;width:1400px;
    }
#nav { height:121px; 
background:lightgreen; margin-bottom:10px;width:1400px;
    }

 


#maincontent { width:1400px; height:710;margin-bottom:5px;}


#main { float:left; width:1000px; height:710px; background:lightblue;}
#side { float:right; width:400px; 
height:710px; background:#FFFF99;
    }

 


#footer { height:70px; 
background:#CCFFCC;width:1400px;
    }




a { color: #000; text-decoration: none; }
a:hover { color: #F00; }
#menu { width:448px; 
height:26px; 
margin:0 auto; border-bottom:3px solid #E10001;
    }
    
#menu ul { list-style: none; margin: 0px; padding: 0px; }
#menu ul li { float:left; margin-left:2px;
        width: 80px;
    }
#menu ul li a { display:block; width:90px; height:30px; line-height:30px; text-align:center; background:url(images/2010-06/27/nav_bg2.gif) 0 0 no-repeat; font-size:14px;}
#menu ul li a:hover { background:url(images/2010-06/27/nav_bg3.gif) 0 0 no-repeat;}
#menu ul li a#current { background:url(images/2010-06/27/nav_bg1.gif) 0 0 no-repeat; font-weight:bold; color:#fff;}
#menu ul li ul { border:1px solid #ccc; display:none; position:absolute;}
#menu ul li ul li { float:none; width:400px; background:#eee; margin:0;}
#menu ul li ul li a { background:none;}
#menu ul li ul li a:hover { background:#333; color:#fff;}
#menu ul li:hover ul { display:block;}
#menu ul li.sfhover ul { display:block;}


<#menu1{ width:409px; 
height:20px; margin:0 auto; border-bottom:3px solid #E10001;text-align:center;
    }
#menu1 ul { list-style: none; margin: 0px; padding: 0px;
        width: 503px;
        height: 28px;
    }
#menu1 ul li { float:left; margin-left:2px;
        width: 80px;
    }
#menu1 ul li a { display:block; width:90px; 
height:20px; 
line-height:30px; align:center;text-align: center; background:url(images/2010-06/27/nav_bg2.gif) 0 0 no-repeat; font-size:15px;
    }
#menu1 ul li a:hover { background:url(images/2010-06/27/nav_bg3.gif) 0 0 no-repeat;}
#menu1 ul li a#current { background:url(images/2010-06/27/nav_bg1.gif) 0 0 no-repeat; font-weight:bold; color:#fff;}
#menu1 ul li ul { border:5px solid #ccc; display:none; position:absolute;}
#menu1 ul li ul li { float:none; width:400px; background:#eee; margin:0;}
#menu1 ul li ul li a { background:none;}
#menu1 ul li ul li a:hover { background:#333; color:#fff;}
#menu1 ul li:hover ul { display:block;}
#menu1 ul li.sfhover ul { display:block;}
 
    #menu1
    {   
        width: 499px;   }

 
</style>




</head>
<body>
    
 <form id="form2" runat="server">
<div id="header">
    
    <h1 align="center">欢迎来到青软长三角实训基地</h1>
</div>
<div id="nav">
<div id="menu">
<ul>

    <li><a href="zhuye.aspx">&nbsp;&nbsp;&nbsp; 本站首页</a>

</li>
<li><a href="#">员工入口</a>
<ul>
<li><a href="员工须知.aspx">员工查询须知</a></li>
<li><a href="个人星级及奖励额度查询.aspx">个人奖评查询</a></li>
</ul>
</li>

<li><a href="#">管理专区</a>



<ul>
<li><a href="星级管理.aspx">星级管理</a></li>
<li><a href="#">仓库管理</a></li>

<li><a href="公司对员工的奖评管理.aspx">员工奖评查询</a></li>

</ul>
</li>

<li><a href="常见问题.aspx">&nbsp;&nbsp; 常见问题</a></li>
</ul>
</div>
</div>




<div id="maincontent">

<div id="main">

    <br />
    <asp:Button ID="Button1"  runat="server" BackColor="Aqua" 
        style="z-index: 1; left: 732px; top: 537px; position: absolute; width: 86px; height: 30px" 
        Text="会员注册" onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" BackColor="Aqua" 
        style="z-index: 1; top: 536px; position: absolute; width: 90px; height: 31px; left: 573px;" 
        Text="会员登陆" onclick="Button2_Click"  />
        
        <asp:Image ID="Image4" runat="server" 
        
        
        
        style="z-index: 1; left: 9px; top: 209px; position: absolute; height: 305px; width: 994px" 
        ImageUrl="~/pingbao.jpg" BackColor="blue" BorderStyle="Ridge" 
        ForeColor="Lime" ViewStateMode="Enabled" />
        
        <br/>
        
        <br/>
        <br/>
        <br/>
        
        <br/>
        <br/>
        <br/>
        
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
       
        
        <ul>
    
    <li>&nbsp;<a href="#" ><font size="3px">纯CSS实现三列纯CSS实现三列D<asp:Image ID="Image3" runat="server" 
            ImageUrl="~/clock.JPG" 
            style="z-index: 1; left: -499px; top: 576px; position: absolute; width: 453px; height: 228px" />
        IV等高布局</font></a></li>
                <br/>
    <li><a href="#">&nbsp;<font size=3px>HTML的ID跟Name属性的区别</font></a></li>
     <br/>
    <li><a href="#"><font size=3px>完美兼容IE6，IE7,IE8的CSS透明滤镜</font></a></li>
     <br/>
    <li><a href="#">&nbsp;<font size=3px>DIV+CSS实现放大镜效果的分页样式</font></a></li>
     <br/>
    <li><a href="#">&nbsp;<font size=3px>javascript为PF设置首页</font></a></li>
     <br/>
    <li><a href="#"><font size=3px>复制到剪切板之IE兼容版</font></a></li>
     <br/>
    <li><a href="#">&nbsp;<font size=3px>多角度对比IPHONE真机</font></a></li>
        <br>
    <li><a href="#"><font size=3px>最新出的这个产品如何使用</font></a></li>
     
    


  
   </ul>


    <br />
    <br />
    <br />
</div>

<div id="side">


    <br />
    <br />
    <br />
    <br />
    <br />
    <br /><br />
    <br /><br /><br />
    <br /><br /><br />
    <asp:Image ID="Image6" runat="server" ImageUrl="~/boshi.JPG" 
        
        
        style="z-index: 1; left: 1014px; top: 216px; position: absolute; height: 337px; width: 392px" />
    <br /><br /><br /><br /><br />
    <br /><br /><br /><br />
 <a href="chatroom.aspx"><font size=10px>尊敬的会员您好，如果您有任何问题请点击此处转向我们的咨询专席</font></a>


 </div>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/clock.JPG" 
        
        style="z-index: 1; left: 432px; top: 586px; position: absolute; width: 568px; height: 330px" />
 </div>

<div id="footer" align="center">

<div id="menu1" align="center">
<ul>



  <li><a href="#"><span> 企业简介</span></a></li>
   <li><a href="#"><span>产品展厅</span></a></li>
  <li><a href="#"><span>企业历史</span></a></li>
  <li><a href="#"><span>招商加盟</span></a></li>
  <li><a href="#"><span>网上下单</span></a></li>
   <li><a href="#"><span>联系我们</span></a></li>

</ul>
</div>


</div>



   
    
  


   
    
    </form>
</body>
</html>

