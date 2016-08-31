<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>

<html>
<head><title>资料下载页面</title>
<link href="style/main.css" rel="stylesheet" type="text/css">
      <script type="text/javascript">
      function movePage(move) {   //提交移动请求
    document.forms[0].action = "HomeworkTeacherDownload.jsp?move="+move;
    document.forms[0].submit();
      }
   </script>
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
  <div id="Layer3"><h1><font size="5" color="blue">教学管理系统资料信息</h1></div>
  <div id="Layer4"><p><font size="6" color="white">下载作业栏</font></p></div>
  <div id="Layer5"><p><font size="4" color="blue" ><a href="TeacherMain.jsp" style="text-decoration:none">返回</a></font><font size="4" color="black">>作业下载</font></p></div>
<div id="Layer1">
<table class="tableCommon">
<tr>
<td class="tdTitleCenter">次序</td>
<td class="tdTitleCenter">文件标题</td>
<td class="tdTitleCenter">文件上传人</td>
<td class="tdTitleCenter">学生学号</td>
<td class="tdTitleCenter">文件名</td>
<td class="tdTitleCenter">上传时间</td>
<td class="tdTitleCenter">操作</td>
</tr>
<%
request.setCharacterEncoding("utf-8");
String homeworkNo=request.getParameter("homeworkNo");
Statement state=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
//是count和where冲突了吗？用where之后会出现错误
String sqlserver="select count(*) from homework1 ";
ResultSet result=state.executeQuery(sqlserver);
int rowNum = 0;
if (result.first())
     rowNum = result.getInt(1);
//2-计算总页数，至少有一页
int totalPage = 0;
if (rowNum!= 0 && rowNum% 7 == 0)
    totalPage = rowNum/ 7;
else
    totalPage = rowNum/ 7 + 1;
    //3-根据用户请求更新当前页
int currentPage = 1;
//前一次的当前页
if (request.getParameter("currentPage") != null)
      currentPage = Integer.parseInt(  request.getParameter("currentPage"));
//移动请求
int move = 0;
if (request.getParameter("move") != null)
     move = Integer.parseInt(request.getParameter("move"));
currentPage = currentPage + move;
//4－查询所有的currentPage*10行记录
sqlserver = "select top 7 * from homework1 where homeId not in ";
sqlserver=sqlserver+" (select top "+(currentPage-1)*7+ " homeId from homework1 ) ";
result=state.executeQuery(sqlserver);
while(result.next())
{
    out.println("<tr>");
    out.println("<td class='tdDataCenter'>"+result.getRow()+"</td>");
    out.println("<td class='tdDataCenter'>"+result.getString("homeworkNo")+"</td>");
    out.println("<td class='tdDataCenter'>"+result.getString("homeworksender")+"</td>");
    out.println("<td class='tdDataCenter'>"+result.getString("studentNo")+"</td>");
    out.println("<td class='tdDataCenter'>"+result.getString("homeworkname")+"</td>");
    out.println("<td class='tdDataCenter'>"+result.getString("time")+"</td>");
    out.println("<td class='tdDataCenter'><a href=HomeworkTeacherDownloadPost.jsp?filename="+result.getString("homeworkname")+">下载</a></td>");
    out.println("</tr>");
}
 %>
</table>
<form method="post" action="#">
<input type="hidden" name="currentPage" value="<%=currentPage%>" />
<p>总共<%=totalPage%>页&nbsp;
       现在<%=currentPage%>页
<% if (currentPage > 1 && totalPage > 1) { %>
     <a href="#" onclick="movePage('-1')">上一页</a>
<% } %>
<% if (currentPage < totalPage) { %>
    <a href="#" onclick="movePage('1')">下一页</a>
<% } %></p>
</form>
</div>
</body>
</html>
<%
    conn.close();
%>


