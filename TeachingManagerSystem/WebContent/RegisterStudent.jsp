<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head><title>学生注册页面</title>
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
      if(form1.sname.value=="")
      {alert("姓名不能为空!");return;}
      if(form1.sno.value=="")
      {alert("学号不能为空!");return;}
      if(form1.pword.value=="")
      {alert("密码不能为空!");return;}
      if(form1.age.value=="")
      {alert("年龄不能为空!");return;}
      if(form1.sprofession.value=="")
      {alert("专业不能为空!");return;} 
      if(1)
      {result=window.confirm("您确认提交吗？注册成功后将跳入登录界面");}
      document.forms[0].submit();
   }
</script>
</head>
<body background="images/forgetpassword.png">
<br><br>
  <div id="Layer2"><hr align="center" width="715" color="blue"></div>
  <div id="Layer3"><h1><font size="5" color="blue">教学管理系统信息注册</h1></div>
  <div id="Layer4"><p><font size="6" color="white">新用户信息注册栏</font></p></div>
  <div id="Layer5"><p><font size="4" color="blue" ><a href="Register.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>学生信息输入</font></p></div>
  <div id="Layer6"><p><font size="2" color="white" ><a href="Login.jsp" style="text-decoration:none">登录</a></font></p></div>
<form name="form1" method="post" action="RSPost.jsp">
<div id="Layer1"><table name="tab" align="center">
<tr >
<td align="center">姓名<input type="text" name="sname" size="19"></td>
</tr>
<tr>
<td align="center">学号<input type="text" name="sno" size="19"></td>
</tr>
<tr>
<td align="center">密码<input type="password" name="pword" ></td>
</tr>
<tr>
<td align="center">年龄<input type="text" name="age" size="19"></td>
</tr>
<tr>
<td align="left">性别
<input type="radio" name="sex" value="男">男
<input type="radio" name="sex" value="女">女
</td>
</tr>
<tr>
<td align="center">Q Q&nbsp;<input type="text" name="qq" size="19"></td>
</tr>
<tr>
<td align="center">邮箱<input type="text" name="email" size="19"></td>
</tr>
<tr>
<td align="center">专业<input type="text" name="sprofession" size="19"></td>
</tr>
<tr>
<td align="center"><input type="button" value="提交" onClick="validate()"></td>
</tr>
</table>
</div>
</form>
</body>
</html>