<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
    request.setCharacterEncoding("utf-8");//设置编码格式 
    String userNo   = (String)session.getAttribute("UserNo");
	String sql = "select * from studentInfo where studentNo=" + userNo;
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(sql);
	//移动到第一行
	rs.next();
%>
<html>
<head>
<title>修改个人信息页面</title>
<link href="style/main.css" rel="stylesheet" type="text/css">
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
  <div id="Layer4"><p><font size="6" color="white">修改信息栏</font></p></div>
  <div id="Layer5"><p><font size="4" color="blue" ><a href="StudentMain.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>修改个人信息</font></p></div>
<div id="Layer1">

<form method="post" action="EditStudentPost.jsp?studentId=<%=rs.getString("studentId")%>">
<table border=1 class="tableCommon">
<tr>
<td class="tdTitleRight"><p><font color=black size=3>姓名</font></p></td>
<td class="tdComponentLeft"><input type="text" name="studentName" value="<%=rs.getString("studentName")%>"></td></tr>
<tr>
<td class="tdTitleRight"><p><font color=black size=3>学号</font></p></td>
<td class="tdComponentLeft"><input type="text" name="studentNo" value="<%=rs.getString("studentNo")%>"></td></tr>
<td class="tdTitleRight"><p><font color=black size=3>年龄</font></p></td>
<td class="tdComponentLeft"><input type="text" name="Age" value="<%=rs.getString("Age")%>"></td></tr>
<tr>
<td class="tdTitleRight"><p><font color=black size=3>性别</font></p></td>
<td class="tdComponentLeft">
男
<input type="radio" name="Sex" value="男"
<%if (rs.getString("Sex").equals("男")){%>
checked="true"<%} %> />
女
<input type="radio" name="Sex" value="女"
<%if (rs.getString("Sex").equals("女")){%>
checked="true" <%} %> />
</td></tr>
<tr>
<td class="tdTitleRight"><p><font color=black size=3>QQ</font></p></td>
<td class="tdComponentLeft"><input type="text" name="QQ" value="<%=rs.getString("QQ")%>"></td></tr>
<tr>
<td class="tdTitleRight"><p><font color=black size=3>Email</font></p></td>
<td class="tdComponentLeft"><input type="text" name="Email" value="<%=rs.getString("Email")%>"></td></tr>
<tr>
<td class="tdTitleRight"><p><font color=black size=3>专业</font></p></td>
<td class="tdComponentLeft"><input type="text" name="studentPrefession" value="<%=rs.getString("studentPrefession")%>"></td></tr>
<tr><td colspan="100%" class="tdTitleRight"> <input type="submit" value="确定" /></td></tr>
</table>
</form>
</div>
</body>
</html>
<%
    conn.close();
%>