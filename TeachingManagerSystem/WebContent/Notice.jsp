<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");//设置编码格式 
	//查询所有公告信息
Statement st= conn.createStatement();
String sql = "select * from Notice order by noticeId desc";
ResultSet rs = st.executeQuery(sql);%>
<html>
<head><title>作业浏览页面</title>
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
	left:270px;
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
  <div id="Layer4"><p><font size="6" color="white">公告栏</font></p></div>
  <div id="Layer5"><p><font size="4" color="blue" ><a href="TeacherMain.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>公告发布信息</font></p></div>
<div id="Layer1">
<table>
			<%while (rs.next()) {
                out.println("<p>");
                out.println("<tr><td>");
				out.print(rs.getRow()+"、");
				out.print("<a href=NoticeShowTeacher.jsp?noticeId="+rs.getString("noticeId")+" style=text-decoration:none><font color=blue>"
				+rs.getString("noticeName") + "</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>");
				out.print("<td>"+ rs.getString("time"));
				out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>");
				out.println("<td><a href=NoticeTeacherDelete.jsp?noticeId="+rs.getString("noticeId")+">删除公告</a></td>");
				out.println("</tr>");
				out.println("</p>");
			}
		%>
</table>
<p align="center" ><font color=blue size=3><a href="NoticeTeacherIssue.jsp">发布公告</a></font></p>
</div>
</body>
</html>
<%
    conn.close();
%>