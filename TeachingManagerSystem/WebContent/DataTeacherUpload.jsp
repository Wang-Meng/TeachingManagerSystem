<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.jspsmart.upload.*"%>
<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
   //设置编码格式 
    request.setCharacterEncoding("utf-8");
    String UserNo=(String)session.getAttribute("UserNo");
    Statement st = conn.createStatement();
    String sql="select * from teacherInfo where(teacherNo='"+UserNo+"')";
    ResultSet rs=st.executeQuery(sql);
    rs.next();
%>
<html>
<head><title>资料发布页面</title>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:550px;
	height:200px;
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
-->
</style>
</head>
<body background="images/forgetpassword.png" scroll="no">
<br><br>
  <div id="Layer2"><hr align="center" width="715" color="blue"></div>
  <div id="Layer3"><h1><font size="5" color="blue">教学管理系统公告信息</h1></div>
  <div id="Layer4"><p><font size="6" color="white">资料发布栏</font></p></div>
  <div id="Layer5"><p><font size="4" color="blue" ><a href="DataTeacherUploadShow.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>资料发布</font></p></div>
<div id="Layer1">
<%response.setCharacterEncoding("GBK"); %>
<form  action="DataTeacherUploadPost.jsp" method="post" name="form1" enctype="multipart/form-data" >
<table>
<tr>
<td>资料标题</td><td><input type="text"  name="dataContent" ></td>
</tr>
<tr>
<td>资料发送方</td><td><input type="text"  name="datasender" value="<%=rs.getString("teacherName")%>"></td>
</tr>
<tr>
<td>备注</td><td><textarea  rows="7" cols="50" name="remark" ></textarea></td>
</tr>
<tr>
<td colspan="2"><font color=blue size=3>请选择文件上传：</font><input type="file" name="myfile"></td>
</tr>
<tr>
<td colspan="2" align="right"><input type="submit" value="提交" ></td>
</tr>
</table>
</form>
</div>
</body>
</html>
<%
    conn.close();
%>












