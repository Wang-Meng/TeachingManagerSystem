<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
String fqq=request.getParameter("fqq");
String fpersonid=request.getParameter("fpersonid");
String ftype=request.getParameter("ftype");
request.setCharacterEncoding("utf-8");
Statement st = conn.createStatement(); 
%>
<html>
<head>
<title>返回密码</title>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:800px;
	height:200px;
	z-index:1;
	top: 190px;
	left:280px;
}
#Layer3 {
	position:absolute;
	width:300px;
	height:200px;
	z-index:1;
	top: 40px;
	left:350px;
}
#Layer4 {
	position:absolute;
	width:300px;
	height:200px;
	z-index:1;
	top: 110px;
	left:270px;
}
#Layer6 {
	position:absolute;
	width:300px;
	height:200px;
	z-index:1;
	top: 130px;
	left:970px;
}
-->
</style>
</head>
<body background="images\forgetpassword.png">
<div id="Layer3"><h1><font size="5" color="blue">教学管理系统密码找回</h1></div>
<div id="Layer4"><p><font size="6" color="white">密码返回栏</font></p></div>
<div id="Layer6"><p><font size="2" color="white" "><a href="Login.jsp" style="text-decoration:none">登录</a>&nbsp;<a href="Register.jsp" style="text-decoration:none">注册</a></font></p></div>
<div id="Layer1">
<p>您的密码是:</p>
   <%if(ftype.equals("teacher"))
   {
      ResultSet rs = st.executeQuery("select * from teacherInfo");
      while(rs.next())
      {
         if((rs.getString("QQ").equals(request.getParameter("fqq"))&&rs.getString("Email").equals(request.getParameter("femail")))==true)
         {%>
            <p><%=rs.getString("passWord")%></p>
       <%}
         else if((rs.getString("QQ").equals(request.getParameter("fqq"))&&rs.getString("Email").equals(request.getParameter("femail")))==false)
         {%>
         <p><%="对不起没有该用户信息，学生用户请先注册!"%></p>
      <% }
      }
   }
   else if(ftype.equals("student"))
   {
      ResultSet rs = st.executeQuery("select * from studentInfo");
      while(rs.next())
      {
         if((rs.getString("QQ").equals(request.getParameter("fqq"))&&rs.getString("Email").equals(request.getParameter("femail")))==true)
         {%>
         <p><%=rs.getString("passWord")%></p>
       <%}
         else if((rs.getString("QQ").equals(request.getParameter("fqq"))&&rs.getString("Email").equals(request.getParameter("femail")))==false)
         {%>
         <p><%="对不起没有该用户信息，学生用户请先注册!"%></p>
       <%}
   }
}%>
</div>
</body>
</html>
<%conn.close();%>