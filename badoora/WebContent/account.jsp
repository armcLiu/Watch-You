<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="badoora.dbmysql, java.util.*,badoora.application,badoora.ap" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled</title>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<meta name="generator" content="Web Page Maker (unregistered version)">
<style type="text/css">
/*----------Text Styles----------*/
.ws6 {font-size: 8px;}
.ws7 {font-size: 9.3px;}
.ws8 {font-size: 11px;}
.ws9 {font-size: 12px;}
.ws10 {font-size: 13px;}
.ws11 {font-size: 15px;}
.ws12 {font-size: 16px;}
.ws14 {font-size: 19px;}
.ws16 {font-size: 21px;}
.ws18 {font-size: 24px;}
.ws20 {font-size: 27px;}
.ws22 {font-size: 29px;}
.ws24 {font-size: 32px;}
.ws26 {font-size: 35px;}
.ws28 {font-size: 37px;}
.ws36 {font-size: 48px;}
.ws48 {font-size: 64px;}
.ws72 {font-size: 96px;}
.form.control {font-size: 13px;font-family: Arial,Helvetica,Sans-Serif;font-style: normal;font-weight: normal;}
/*----------Para Styles----------*/
DIV,UL,OL /* Left */
{
 margin-top: 0px;
 margin-bottom: 0px;
}
</style>

<style type="text/css">
a.style1:link{color:#FFFFFF;text-decoration: none;}
a.style1:visited{color:#FFFFFF;text-decoration: none;}
a.style1:hover{color:#FFFFFF;text-decoration: none;}
a.style1:active{color:#FFFFFF;text-decoration: none;}
</style>

<script src="ac_activex.js" type="text/javascript"></script>

<style type="text/css">
div#container
{
	position:relative;
	width: 783px;
	margin-top: 0px;
	margin-left: auto;
	margin-right: auto;
	text-align:left; 
}
body {text-align:center;margin:0}
</style>
<% 
dbmysql dao = new dbmysql();

String action = request.getParameter("action");
String lname = request.getParameter("formtext1");
String fname = request.getParameter("formtext2");
String email = request.getParameter("formtext3");
String password = request.getParameter("formtext4");
if("create".equals(action)){
ap app = new ap(lname,fname,email,password);
	
	dao.create(app);
	
	
}

%>
</head>

<body bgColor="#E4E6D9">
<div id="container">
<div id="image6" style="position:absolute; overflow:hidden; left:452px; top:74px; width:317px; height:165px; z-index:0"><img src="images/right0.jpg" alt="" title="" border=0 width=317 height=165></div>

<div id="image19" style="position:absolute; overflow:hidden; left:466px; top:173px; width:288px; height:49px; z-index:1"><img src="images/arc.gif" alt="" title="" border=0 width=288 height=49></div>

<div id="image18" style="position:absolute; overflow:hidden; left:466px; top:110px; width:288px; height:49px; z-index:2"><img src="images/arc.gif" alt="" title="" border=0 width=288 height=49></div>

<div id="shape1" style="position:absolute; overflow:hidden; left:12px; top:254px; width:758px; height:535px; z-index:3"><img border=0 width="100%" height="100%" alt="" src="images/rect44720074.gif"></div>

<div id="image2" style="position:absolute; overflow:hidden; left:231px; top:294px; width:16px; height:472px; z-index:4"><img src="images/line120.gif" alt="" title="" border=0 width=16 height=472></div>

<div id="image3" style="position:absolute; overflow:hidden; left:14px; top:257px; width:755px; height:17px; z-index:5"><img src="images/line5.gif" alt="" title="" border=0 width=755 height=17></div>

<div id="image9" style="position:absolute; overflow:hidden; left:14px; top:792px; width:759px; height:42px; z-index:6"><img src="images/software_09.jpg" alt="" title="" border=0 width=759 height=42></div>

<div id="g_image1" style="position:absolute; overflow:hidden; left:13px; top:25px; width:757px; height:36px; z-index:7"><img src="images/bar00.gif" alt="" title="" border=0 width=757 height=36></div>

<div id="g_text1" style="position:absolute; overflow:hidden; left:34px; top:35px; width:516px; height:20px; z-index:8">
<div class="form.control">
<div><font face="Tahoma" class="ws8"><B><a href="index.html" title="" class="style1">Home</a></B></font><font color="#000000" face="Tahoma" class="ws8"><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Discount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </B></font><font face="Tahoma" class="ws8"><B><a href="services.html" title="" class="style1"> Create Account</a></B></font><font color="#000000" face="Tahoma" class="ws8"><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </B></font><font face="Tahoma" class="ws8"><B><a href="mailto:support@webpage-maker.com" title="" class="style1">Contacts</a></B></font><font color="#000000" face="Tahoma" class="ws8"><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </B></font><font color="#FFFFFF" face="Tahoma" class="ws8"><B>FAQ</B></font></div>
</div></div>

<div id="g_flash1" style="position:absolute; overflow:hidden; left:10px; top:78px; width:440px; height:165px; z-index:9">
<script type="text/javascript">
AC_RunFlashContent("id","g_flash1","width","440","height","165","quality","high","autoplay","true","loop","true","wmode","window","codebase","http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab","pluginspage","http://www.macromedia.com/go/getflashplayer","src","images/header08.swf");
</script>
<noscript>
<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab" width=440 height=165>
<param name="movie" value="images/header08.swf">
<param name="quality" value="high">
<param name="loop" value="true">
<param name="wmode" value="window">
<param name="autoplay" value="true">
<!--[if !IE]>-->
<object data="images/header08.swf" width="440" height="165" type="application/x-shockwave-flash">
<param name="pluginurl" value="http://www.macromedia.com/go/getflashplayer">
<param name="quality" value="high">
<param name="loop" value="true">
<param name="wmode" value="window">
<param name="autoplay" value="true">
</object>
<!--<![endif]-->
</object>
</noscript>
</div>
<form action = "account.jsp">
<div id="text1" style="position:absolute; overflow:hidden; left:251px; top:290px; width:419px; height:485px; z-index:10; background-color:#CCFFFF">
</div>

<div id="text2" style="position:absolute; overflow:hidden; left:264px; top:326px; width:75px; height:32px; z-index:11">
<div class="form.control">
<div>Last name</div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:262px; top:356px; width:75px; height:32px; z-index:12">
<div class="form.control">
<div>First name</div>
</div></div>

<input name="formtext1" type="text" style="position:absolute;width:172px;left:330px;top:324px;z-index:13">
<input name="formtext2" type="text" style="position:absolute;width:174px;left:330px;top:356px;z-index:14">
<select name="formselect1" style="position:absolute;left:331px;top:475px;width:110px;z-index:15">
<option value="0">Male</option>
<option value="1">Female</option>
<option value="2">Other</option>
</select>
<div id="text5" style="position:absolute; overflow:hidden; left:281px; top:477px; width:75px; height:32px; z-index:16">
<div class="form.control">
<div>Gender</div>
</div></div>

<input name="formtext3" type="text" style="position:absolute;width:231px;left:330px;top:387px;z-index:17">
<div id="text6" style="position:absolute; overflow:hidden; left:282px; top:389px; width:75px; height:32px; z-index:18">
<div class="form.control">
<div>Email</div>
</div></div>

<input name="formtext4" type="password" style="position:absolute;width:231px;left:329px;top:415px;z-index:19">
<div id="text7" style="position:absolute; overflow:hidden; left:263px; top:416px; width:75px; height:32px; z-index:20">
<div class="form.control">
<div>Password</div>
</div></div>

<div id="text8" style="position:absolute; overflow:hidden; left:261px; top:439px; width:61px; height:32px; z-index:21">
<div class="form.control">
<div>confirm password</div>
</div></div>

<input name="formtext5" type="password" style="position:absolute;width:198px;left:330px;top:441px;z-index:22">
<select name="formselect2" style="position:absolute;left:330px;top:503px;width:161px;z-index:23">
<option value="0">Canada</option>
<option value="1">United State</option>
<option value="2">Uk</option>
</select>
<div id="text9" style="position:absolute; overflow:hidden; left:279px; top:504px; width:75px; height:32px; z-index:24">
<div class="form.control">
<div>Country</div>
</div></div>

<input name="formtext6" type="text" style="position:absolute;width:231px;left:328px;top:532px;z-index:25">
<div id="text10" style="position:absolute; overflow:hidden; left:272px; top:532px; width:75px; height:32px; z-index:26">
<div class="form.control">
<div>Address</div>
</div></div>

<div id="text11" style="position:absolute; overflow:hidden; left:254px; top:564px; width:75px; height:32px; z-index:27">
<div class="form.control">
<div>Postal Code</div>
</div></div>

<input name="formtext7" type="text" style="position:absolute;width:128px;left:327px;top:561px;z-index:28">
<div id="text12" style="position:absolute; overflow:hidden; left:258px; top:592px; width:135px; height:20px; z-index:29; background-color:#FFFF99">
<div class="form.control">
<div><B>Finincial Information</B></div>
</div></div>

<select name="formselect3" style="position:absolute;left:323px;top:628px;width:166px;z-index:30">
<option value="0">Visa</option>
<option value="1">Master</option>
<option value="2">Amercan express</option>
</select>
<div id="text13" style="position:absolute; overflow:hidden; left:255px; top:630px; width:75px; height:32px; z-index:31">
<div class="form.control">
<div>Credit Card</div>
</div></div>

<input name="formtext8" type="text" style="position:absolute;width:231px;left:321px;top:654px;z-index:32">
<div id="text14" style="position:absolute; overflow:hidden; left:252px; top:658px; width:75px; height:32px; z-index:33">
<div class="form.control">
<div>Credit Num</div>
</div></div>

<input name="formtext9" type="text" style="position:absolute;width:128px;left:320px;top:681px;z-index:34">
<div id="text15" style="position:absolute; overflow:hidden; left:252px; top:682px; width:75px; height:32px; z-index:35">
<div class="form.control">
<div>Se number</div>
</div></div>

<div id="text16" style="position:absolute; overflow:hidden; left:450px; top:683px; width:214px; height:32px; z-index:36">
<div class="form.control">
<div><font color="#FF0000" class="ws9">three numbers in the back of your card</font></div>
</div></div>

<input name="formtext10" type="text" style="position:absolute;width:128px;left:320px;top:709px;z-index:37">
<div id="text17" style="position:absolute; overflow:hidden; left:250px; top:711px; width:75px; height:32px; z-index:38">
<div class="form.control">
<div align=center>Valdation date</div>
</div></div>

<div id="image1" style="position:absolute; overflow:hidden; left:486px; top:109px; width:56px; height:39px; z-index:39"><img src="images/6.JPG" alt="" title="" border=0 width=56 height=39></div>

<div id="image4" style="position:absolute; overflow:hidden; left:488px; top:161px; width:58px; height:55px; z-index:40"><img src="images/7.jpg" alt="" title="" border=0 width=58 height=55></div>

<div id="text4" style="position:absolute; overflow:hidden; left:553px; top:108px; width:201px; height:117px; z-index:41">
<div class="form.control">
<div><font color="#969696" class="ws8"><BR></font></div>
<div><font color="#969696" class="ws8">Watches on Discount</font></div>
<div><font color="#969696" class="ws6"><B><BR></B></font></div>
<div><font color="#969696" class="ws8"><B><BR></B></font></div>
<div><font color="#969696" class="ws6"><B><BR></B></font></div>
<div><font color="#969696" class="ws9"><B> New Models of Brands</B></font><font color="#969696" class="ws8">!</font></div>
<div><font color="#969696" face="Tahoma" class="ws8"><BR></font></div>
<div><font color="#C0C0C0" face="Tahoma" class="ws8"><BR></font></div>
</div></div>

<div id="image5" style="position:absolute; overflow:hidden; left:396px; top:584px; width:188px; height:37px; z-index:42"><img src="images/amex_online_multi4_clear_small.gif" alt="Purchase Web Page Editor" title="Purchase Web Page Editor" border=0 width=188 height=37></div>

<input name="action" type="button" value="create" style="position:absolute;left:315px;top:741px;z-index:43">
<input name="formbutton2" type="button" value="Cancel" style="position:absolute;left:405px;top:741px;z-index:44">
<td> <button class="btn" name = "action" value="create" >
add
</button>
</td>
</form>

</body>
</html>