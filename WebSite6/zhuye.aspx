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
    
    <h1 align="center">��ӭ������������ʵѵ����</h1>
</div>
<div id="nav">
<div id="menu">
<ul>

    <li><a href="zhuye.aspx">&nbsp;&nbsp;&nbsp; ��վ��ҳ</a>

</li>
<li><a href="#">Ա�����</a>
<ul>
<li><a href="Ա����֪.aspx">Ա����ѯ��֪</a></li>
<li><a href="�����Ǽ���������Ȳ�ѯ.aspx">���˽�����ѯ</a></li>
</ul>
</li>

<li><a href="#">����ר��</a>



<ul>
<li><a href="�Ǽ�����.aspx">�Ǽ�����</a></li>
<li><a href="#">�ֿ����</a></li>

<li><a href="��˾��Ա���Ľ�������.aspx">Ա��������ѯ</a></li>

</ul>
</li>

<li><a href="��������.aspx">&nbsp;&nbsp; ��������</a></li>
</ul>
</div>
</div>




<div id="maincontent">

<div id="main">

    <br />
    <asp:Button ID="Button1"  runat="server" BackColor="Aqua" 
        style="z-index: 1; left: 732px; top: 537px; position: absolute; width: 86px; height: 30px" 
        Text="��Աע��" onclick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" BackColor="Aqua" 
        style="z-index: 1; top: 536px; position: absolute; width: 90px; height: 31px; left: 573px;" 
        Text="��Ա��½" onclick="Button2_Click"  />
        
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
    
    <li>&nbsp;<a href="#" ><font size="3px">��CSSʵ�����д�CSSʵ������D<asp:Image ID="Image3" runat="server" 
            ImageUrl="~/clock.JPG" 
            style="z-index: 1; left: -499px; top: 576px; position: absolute; width: 453px; height: 228px" />
        IV�ȸ߲���</font></a></li>
                <br/>
    <li><a href="#">&nbsp;<font size=3px>HTML��ID��Name���Ե�����</font></a></li>
     <br/>
    <li><a href="#"><font size=3px>��������IE6��IE7,IE8��CSS͸���˾�</font></a></li>
     <br/>
    <li><a href="#">&nbsp;<font size=3px>DIV+CSSʵ�ַŴ�Ч���ķ�ҳ��ʽ</font></a></li>
     <br/>
    <li><a href="#">&nbsp;<font size=3px>javascriptΪPF������ҳ</font></a></li>
     <br/>
    <li><a href="#"><font size=3px>���Ƶ����а�֮IE���ݰ�</font></a></li>
     <br/>
    <li><a href="#">&nbsp;<font size=3px>��ǶȶԱ�IPHONE���</font></a></li>
        <br>
    <li><a href="#"><font size=3px>���³��������Ʒ���ʹ��</font></a></li>
     
    


  
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
 <a href="chatroom.aspx"><font size=10px>�𾴵Ļ�Ա���ã���������κ����������˴�ת�����ǵ���ѯרϯ</font></a>


 </div>
    <asp:Image ID="Image5" runat="server" ImageUrl="~/clock.JPG" 
        
        style="z-index: 1; left: 432px; top: 586px; position: absolute; width: 568px; height: 330px" />
 </div>

<div id="footer" align="center">

<div id="menu1" align="center">
<ul>



  <li><a href="#"><span> ��ҵ���</span></a></li>
   <li><a href="#"><span>��Ʒչ��</span></a></li>
  <li><a href="#"><span>��ҵ��ʷ</span></a></li>
  <li><a href="#"><span>���̼���</span></a></li>
  <li><a href="#"><span>�����µ�</span></a></li>
   <li><a href="#"><span>��ϵ����</span></a></li>

</ul>
</div>


</div>



   
    
  


   
    
    </form>
</body>
</html>

