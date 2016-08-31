<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
Statement state=conn.createStatement();
String sqlserver="select * from data order by time desc";
ResultSet result=state.executeQuery(sqlserver);
%>
<html>
<head><title>资料浏览页面</title>
<link href="style/main.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:500px;
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
</head>
<body background="images/forgetpassword.png" scroll="no">
<br><br>
  <div id="Layer2"><hr align="center" width="715" color="blue"></div>
  <div id="Layer3"><h1><font size="5" color="blue">教学管理系统公告信息</h1></div>
  <div id="Layer4"><p><font size="6" color="white">资料栏</font></p></div>
  <div id="Layer5"><p><font size="4" color="blue" ><a href="TeacherMain.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>资料显示信息</font></p></div>
<div id="Layer1">
<table  class="tableCommon">
<tr>
<td class="tdTitleCenter">次序</td>
<td class="tdTitleCenter">标题</td>
<td class="tdTitleCenter">上传人</td>
<td class="tdTitleCenter">文件名</td>
<td class="tdTitleCenter">上传时间</td>
<td class="tdTitleCenter">操作</td>
</tr>
<%while (result.next()) {
                out.print("<tr>");
				out.print("<td class='tdDataCenter'>"+result.getRow()+"</td>");
				out.print("<td class='tdDataCenter'>"+result.getString("dataContent") + "</td>");
				out.print("<td class='tdDataCenter'>"+result.getString("datasender")+"</td>");
				out.print("<td class='tdDataCenter'>"+result.getString("datafilename")+"</td>");
				out.print("<td class='tdDataCenter'>"+result.getString("time")+"</td>");
				out.print("<td class='tdDataCenter'><a href=DataTeacherUploadDelete.jsp?dataId="+result.getString("dataId")+">删除文件</a></td>");
				out.print("</tr>");
			}

%>
<tr>
    <td colspan="100%" class="tdDataRight">
        <a href="DataTeacherUpload.jsp">上传文件</a>
    </td>
</tr>

</table>
</div>
</body>
</html>
<%
    conn.close();
%>