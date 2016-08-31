<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head><title>注册信息页面</title>
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
	left:290px;
}
#Layer5 {
	position:absolute;
	width:300px;
	height:200px;
	z-index:1;
	top: 185px;
	left:290px;
}
#Layer6 {
	position:absolute;
	width:300px;
	height:200px;
	z-index:1;
	top: 100px;
	left:1000px;
}
-->
</style>
</head>
<body background="images/forgetpassword.png">
<br><br>
  <div id="Layer2"><hr align="center" width="715" color="blue"></div>
  <div id="Layer3"><h1><font size="5" color="blue">教学管理系统密码查找</h1></div>
  <div id="Layer4"><p><font size="6" color="white">用户密码查找栏</font></p></div>
  <div id="Layer5"><p><font size="4" color="blue" ><a href="Login.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>身份信息输入</font></p></div>
  <div id="Layer6"><p><font size="2" color="white" ><a href="Login.jsp" style="text-decoration:none">登录</a>&nbsp;<a href="Register.jsp" style="text-decoration:none">注册</a></font></p></div>
<form name="form1" method="post" action="ForgetPasswordTo.jsp">
<div id="Layer1"><table name="tab" align="center">
<tr><td>请选择您要找回密码的身份:
<input type="radio" name="shenfen" value="教师">教师
<input type="radio" name="shenfen" value="学生">学生</td>
</tr>
<% for(int i=0;i<50;i++){
out.print("<tr>");
out.print("</tr>");
}%>
<tr><td align="center"><input type="submit" value="下一步"></td></tr>
</table>
</div>
</form>
</body>
</html>