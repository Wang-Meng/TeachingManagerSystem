<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
//设置编码格式
request.setCharacterEncoding("utf-8"); 
//查询所有公告信息
Statement ST= conn.createStatement();
String SQL = "select * from homeworkInfo order by time";
ResultSet RS = ST.executeQuery(SQL);
%>
<html>
<head><title>作业浏览页面</title>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:500px;
	height:260px;
	overflow-y:auto;
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
	left:290px;
}
-->
</style>
</head>
<body background="images/forgetpassword.png" scroll="no">
<br><br>
  <div id="Layer2"><hr align="center" width="715" color="blue"></div>
  <div id="Layer3"><h1><font size="5" color="blue">教学管理系统公告信息</h1></div>
  <div id="Layer4"><p><font size="6" color="white">作业栏</font></p></div>
  <div id="Layer5"><p><font size="4" color="blue" ><a href="StudentMain.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>作业提交信息</font></p></div>
<div id="Layer1">
<table>
<%while (RS.next()) {
                out.println("<tr>");
				out.print("<td>"+RS.getRow()+"、");
				out.print("<font color=black>"+RS.getString("homeworkNo") +"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>");
				out.print( "<td>"+RS.getString("time")+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></font>");
				out.print( "<td><a href=HomeworkStudentSubmit.jsp?homeworkId="+RS.getString("homeworkId")+" style=text-decoration:none><font color=blue>提交&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></a></td>");
				
				out.println("</tr>");
			}
%>
</table>
</div>
</body>
</html>
<%
    conn.close();
%>