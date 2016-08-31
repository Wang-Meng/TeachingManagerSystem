<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
	String noticeId = request.getParameter("noticeId");
	String sql = "select * from Notice where noticeId=" + noticeId;
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(sql);
	//移动到第一行
	rs.next();
%>
<html>
<head><title>公告信息页面</title>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:500px;
	height:200px;
	z-index:1;
	top: 230px;
	left:390px;
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
<body background="images/forgetpassword.png">
<br><br>
  <div id="Layer2"><hr align="center" width="715" color="blue"></div>
  <div id="Layer3"><h1><font size="5" color="blue">教学管理系统公告信息</h1></div>
  <div id="Layer4"><p><font size="6" color="white">公告栏</font></p></div>
  <div id="Layer5"><p><font size="4" color="blue" ><a href="Notice.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>公告信息</font></p></div>
<div id="Layer1">
<h2 align="center"><font color=black><%=rs.getString("noticeName")%></font></h2>
<p><font color=black size=3>&nbsp;&nbsp;&nbsp;<%=rs.getString("noticeContent")%></font></p><br><br>
<p align="right"><font color=black size=3><%=rs.getString("time")%></font></p>
</div>
</body>
</html>
<%
    conn.close();
%>