<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="badoora.html1" %>
     <%@ page import="badoora.dbmysql, java.util.*,badoora.application" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div><TABLE bgcolor="#FFFFFF" border=1 bordercolorlight="#C0C0C0" bordercolordark="#808080">
<TR valign=top>
<TD width=100><BR>
</TD>
<TD width=100><div class="wpmd">
<div><font style="background-color:#FF0000;"><BR></font></div>
</div>
</TD>
<TD width=100><BR>
</TD>
<TD width=100><BR>
</TD>
</TR>
<TR valign=top>
<TD width=100><BR>
</TD>
<TD width=100><div class="wpmd">
<div><font color="#0000FF"><BR></font></div>
</div>
</TD>
<TD width=100><div class="wpmd">
<div><font color="#0000FF"><BR></font></div>
</div>
</TD>
<TD width=100><div class="wpmd">
<div><font color="#0000FF"><BR></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=100><BR>
</TD>
<TD width=100><BR>
</TD>
<TD width=100><BR>
</TD>
<TD width=100><BR>
</TD>
</TR>
<TR valign=top>
<TD width=100><BR>
</TD>
<TD width=100><BR>
</TD>
<TD width=100><BR>
</TD>
<TD width=100><BR>
</TD>
</TR>
</TABLE>
</div>
<h1> bader mansour</h1>

<form action="gh.jsp">
<tr> 
<td><input name="id" class="form.control"/></td>
<td><input name="age" class="form.control"/></td>
<td><input name="first" class="form.control"/></td>
<td><input name="last" class="form.control"/></td>
<td> <button class="btn" name = "action" value="create" >
add
</button>
</td>
</tr>

</form>

<% 
dbmysql dao = new dbmysql();

String action = request.getParameter("action");
String ide = request.getParameter("id");
String agee = request.getParameter("age");
String first = request.getParameter("first");
String last = request.getParameter("last");
if("create".equals(action)){
	int id = Integer.parseInt(ide);
	int age = Integer.parseInt(agee);
	
	application app = new application(id, age,first,last);
	
	dao.create(app);
}





List <application> applications =  dao.selectall();

%>
<tablel>
<% for(application app:applications){
	%>
	<tr>
	<td> <%= app.getId() %></td>
	<td> <%= app.getAge() %></td>
	<td> <%= app.getFirat() %></td>
	<td> <%= app.getLast() %> </td>
	</tr>
	<% } %>


</table>

<ul>
<% 
html1 hello = new html1();
String message = hello.hello("say bader");

int sum=0;
for (int i=1;i< 6;i++){
	
	sum=sum+i;
	%>
	<li> badermansour <%= i %> </li>
		<li> <%= message %>sumation <%= sum %> </li>
		<li> say <%= message %> </li>
		
	<% 
}
%>
</ul>
*/

</body>
</html>