<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.jspsmart.upload.*"%>
<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
    request.setCharacterEncoding("utf-8");//设置编码格式 
    String userNo   = (String)session.getAttribute("UserNo");
    String userType = (String)session.getAttribute("UserType");
%>


<html>
<head>
<title>作业上传页面</title>
<link href="style/main.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:500px;
	height:260px;
	z-index:1;
	top: 250px;
	left:395px;
}
#Layer2 {
	position:absolute;
	width:300px;
	height:200px;
	z-index:1;
	top: 230px;
	left:290px;
}
#Layer3 {
	position:absolute;
	width:300px;
	height:200px;
	z-index:1;
	top: 20px;
	left:350px;
}
#Layer4 {
	position:absolute;
	width:300px;
	height:200px;
	z-index:1;
	top: 80px;
	left:220px;
}
#Layer5 {
	position:absolute;
	width:300px;
	height:200px;
	z-index:1;
	top: 185px;
	left:220px;
}
-->
</style>
</head>
<body background="images/forgetpassword.png" scroll="no">
<br><br>
  <div id="Layer2"><hr align="center" width="715" color="blue"></div>
  <div id="Layer3"><h1><font size="5" color="blue">教学管理系统公告信息</h1></div>
  <div id="Layer4"><p><font size="6" color="white">个人信息栏</font></p></div>
  

<%
if(userType.equals("教师"))
{
   Statement stteacher = conn.createStatement();
   ResultSet rsteacher = stteacher.executeQuery("select * from teacherInfo where(teacherNo='"+userNo+"')");
   rsteacher.next();
%>
<div id="Layer5"><p><font size="4" color="blue" ><a href="TeacherMain.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>个人信息</font></p></div>
<div id="Layer1">
<table border=1 class="tableCommon">
<tr>
<td class="tdTitleCenter">姓名</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsteacher.getString("teacherName")%></td></tr>
<tr>
<td class="tdTitleCenter">学号</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsteacher.getString("teacherNo")%></td></tr>
<td class="tdTitleCenter">年龄</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsteacher.getString("Age")%></td></tr>
<tr>
<td class="tdTitleCenter">性别</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsteacher.getString("Sex")%></td></tr>
<tr>
<td class="tdTitleCenter">QQ</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsteacher.getString("QQ")%></td></tr>
<tr>
<td class="tdTitleCenter">Email</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsteacher.getString("Email")%></td></tr>
<tr>
<td class="tdTitleCenter">专业</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsteacher.getString("teacherDept")%></td></tr>
</table>
</div>
<%} %>

<%
 if(userType.equals("学生"))
{
   Statement ststudent = conn.createStatement();
   ResultSet rsstudent = ststudent.executeQuery("select * from studentInfo where(studentNo='"+userNo+"')");
   rsstudent.next();
%>
<div id="Layer5"><p><font size="4" color="blue" ><a href="StudentMain.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>个人信息</font></p></div>
<div id="Layer1">
<table border=1 class="tableCommon">
<tr>
<td class="tdTitleCenter">姓名</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsstudent.getString("studentName")%></td></tr>
<tr>
<td class="tdTitleCenter">学号</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsstudent.getString("studentNo")%></td></tr>
<td class="tdTitleCenter">年龄</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsstudent.getString("Age")%></td></tr>
<tr>
<td class="tdTitleCenter">性别</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsstudent.getString("Sex")%></td></tr>
<tr>
<td class="tdTitleCenter">QQ</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsstudent.getString("QQ")%></td></tr>
<tr>
<td class="tdTitleCenter">Email</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsstudent.getString("Email")%></td></tr>
<tr>
<td class="tdTitleCenter">专业</td>
<td class="tdTitleCenter"><font color=black size=3><%=rsstudent.getString("studentPrefession")%></td></tr>
</table>
<%} %>
</div>
</body>
</html>
<%
    conn.close();
%>












