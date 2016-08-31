<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
    request.setCharacterEncoding("utf-8");//设置编码格式 
    String userNo   = (String)session.getAttribute("UserNo");
	String sql = "select * from teacherInfo where teacherNo=" + userNo;
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(sql);
	//移动到第一行
	rs.next();
%>
<html>
<head><title>公告信息填写页面</title>
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

<script type="text/javascript">
   function validate()
   {
      if(form1.Nname.value=="")
      {alert("姓名不能为空!");return;}
      if(form1.Ntname.value=="")
      {alert("学号不能为空!");return;}
      if(form1.Ncontent.value=="")
      {alert("密码不能为空!");return;}
      if(1)
      {result=window.confirm("您确认提交吗？");}
      document.forms[0].submit();
   }
</script>
</head>
<body background="images/forgetpassword.png">
<br><br>
  <div id="Layer2"><hr align="center" width="715" color="blue"></div>
  <div id="Layer3"><h1><font size="5" color="blue">教学管理系统公告信息</h1></div>
  <div id="Layer4"><p><font size="6" color="white">公告信息栏</font></p></div>
  <div id="Layer5"><p><font size="4" color="blue" ><a href="Notice.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>公告信息输入</font></p></div>
  
<form name="form1" method="post" action="NoticeTeacherIssuePost.jsp">
<div id="Layer1"><br>
<table name="tab"  border=3 class="tableCommon">
<tr >
<td class='tdDataCenter'>公告名称</td><td class='tdDataCenter'><input type="text" name="Nname" size="19"></td>
</tr>
<tr>
<td class='tdDataCenter'>发布人姓名</td><td class='tdDataCenter'><input type="text" name="Ntname" size="19" value="<%=rs.getString("teacherName") %>"></td>
</tr>
<tr>
<td class='tdDataCenter'>公告内容</td><td class='tdDataCenter'><textarea name="Ncontent" rows="5" cols="25"></textarea></td>
</tr>
<tr>
<td colspan="2"  class='tdDataRight'><input type="button" value="提交" onClick="validate()"></td>
</tr>
</table>
</div>
</form>
</body>
</html>