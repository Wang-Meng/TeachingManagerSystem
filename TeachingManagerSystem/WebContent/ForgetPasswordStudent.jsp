<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head><title>学生密码找回页面</title>
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

<script type="text/javascript">
   function validate()
   {
      if(form1.fsname.value=="")
      {alert("姓名不能为空!");return;}
      if(form1.fsno.value=="")
      {alert("学号不能为空!");return;}
      if(form1.fpword.value=="")
      {alert("密码不能为空!");return;}
      if(form1.fpword.value!=form1.fspword.value)
      {alert("密码不一致，请重新输入");return;}
      if(1)
      {result=window.confirm("您确认提交吗？密码修改成功后将跳入登录界面");}
      document.forms[0].submit();
   }
</script>
</head>
<body background="images/forgetpassword.png">
<br><br>
  <div id="Layer2"><hr align="center" width="715" color="blue"></div>
  <div id="Layer3"><h1><font size="5" color="blue">教学管理系统密码找回</h1></div>
  <div id="Layer4"><p><font size="6" color="white">学生用户密码查找栏</font></p></div>
  <div id="Layer5"><p><font size="4" color="blue" ><a href="Register.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>学生信息输入</font></p></div>
  <div id="Layer6"><p><font size="2" color="white" ><a href="Login.jsp" style="text-decoration:none">登录</a></font></p></div>
<form name="form1" method="post" action="FPSPost.jsp">
<div id="Layer1"><table name="tab" align="center">
<tr >
<td align="center">姓名&nbsp;<input type="text" name="fsname" size="19"></td>
</tr>
<tr>
<td align="center">学号&nbsp;<input type="text" name="fsno" size="19"></td>
</tr>
<tr>
<td align="center">&nbsp;&nbsp;&nbsp;新密码&nbsp;<input type="password" name="fpword" >&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
<tr>
<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;确认密码&nbsp;<input type="password" name="fspword" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
<% for(int i=0;i<10;i++){
out.print("<tr>");
out.print("</tr>");
}%>
<tr>
<td align="center"><input type="button" value="提交" onClick="validate()"></td>
</tr>
</table>
</div>
</form>
</body>
</html>