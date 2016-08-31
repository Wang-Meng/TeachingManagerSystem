<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.util.*"%>
<%@ include file="conn.jsp"%>
<%
//设置编码格式
request.setCharacterEncoding("utf-8"); 
//查询所有公告信息
Statement st= conn.createStatement();
String sql = "select * from Notice order by noticeId desc";
ResultSet rs = st.executeQuery(sql);
%>
<%
Statement ST= conn.createStatement();
String SQL = "select * from homeworkInfo order by homeworkId desc ";
ResultSet RS = ST.executeQuery(SQL);
%>
<%
Statement state=conn.createStatement();
String sqlserver="select * from data order by dataId desc";
ResultSet result=state.executeQuery(sqlserver);
%>
<%
Statement STATE=conn.createStatement();
String SQLSEVER="select * from messageInfo order by messageNo desc";
ResultSet RESULT=STATE.executeQuery(SQLSEVER);
%>


<html>
<head>
<title>学生管理模块</title>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:700px;
	height:20px;
	z-index:1;
	top: 20px;
	left:330px;
}
#Layer2 {
	position:absolute;
	width:700px;
	height:20px;
	z-index:1;
	top: 91px;
	left:250px;
}
#Layer3 {
	position:absolute;
	width:700px;
	height:20px;
	z-index:1;
	top: 1180px;
	left:300px;
}
#Layer4 {
	position:absolute;
	width:180px;
	height:500px;
	z-index:1;
	top: 500px;
	left:270px;
}
#Layer5 {
	position:absolute;
	width:250px;
	height:200px;
	overflow-y:auto;
	z-index:1;
	top: 500px;
	left:500px;
}
#Layer6 {
	position:absolute;
	width:250px;
	height:200px;
	overflow-y:auto;
	z-index:1;
	top: 500px;
	left:800px;
}
#Layer7 {
	position:absolute;
	width:250px;
	height:200px;
	overflow-y:auto;
	z-index:1;
	top: 770px;
	left:500px;
}
#Layer8 {
	position:absolute;
	width:250px;
	height:200px;
	overflow-y:auto;
	z-index:1;
	top: 770px;
	left:800px;
}
#Layer9 {
	position:absolute;
	width:800px;
	height:70px;
	z-index:1;
	top: 1080px;
	left:270px;
}
#Layer10 {
	position:absolute;
	width:800px;
	height:70px;
	z-index:1;
	top: 1125px;
	left:270px;
}
#Layer11 {
	position:absolute;
	width:180px;
	height:500px;
	z-index:1;
	top: 600px;
	left:280px;
}
#Layer12 {
	position:absolute;
	width:200px;
	height:200px;
	z-index:2;
	top: 150px;
	left:250px;
}
#Layer13 {
	position:absolute;
	width:250px;
	height:140px;
	overflow-y:auto;
	z-index:1;
	top: 560px;
	left:500px;
}
#Layer14 {
	position:absolute;
	width:250px;
	height:140px;
	overflow-y:auto;
	z-index:1;
	top: 560px;
	left:800px;
}
#Layer15 {
	position:absolute;
	width:250px;
	height:140px;
	overflow-y:auto;
	z-index:1;
	top: 830px;
	left:500px;
}
#Layer16 {
	position:absolute;
	width:250px;
	height:140px;
	overflow-y:auto;
	z-index:1;
	top: 830px;
	left:800px;
}
-->
</style>
<style>
/*你要的代码*/
a {color:white;}
a:hover {color:blue;}

/*你要的代码*/
</style>





</head>
<body background="images/main.png">

<div id="Layer1"><h1><font color="blue">课程教学管理系统</font></h1></div>
<div id="Layer2"><h3><a href="StudentMain.jsp" style="text-decoration:none;">首页&nbsp;&nbsp;</a>
                     <a href="HomeworkStudentShow.jsp" style="text-decoration:none">作业上传&nbsp;&nbsp;</a>
                     <a href="DataStudentdownload.jsp" style="text-decoration:none">资料下载&nbsp;&nbsp;</a>
                     <a href="MessageStudent.jsp" style="text-decoration:none">留言查看&nbsp;&nbsp;</a>
                     <a href="EditStudent.jsp" style="text-decoration:none">修改信息&nbsp;&nbsp;</a></h3></div>
<div id="Layer4">
<table  width="180" height="500" background="images/backgroundPerson.jpg">
<tr><td>
</td>
</tr>
</table>
</div>  
<div id="Layer5" style="background-image:url(images/main02.jpg)">
<font size="4" color="blue"><B><br>最新公告</B></font><br>
<hr>
</div>
<div id="Layer13" >
<table>
<%while (rs.next()) {
                out.println("<tr><td>");
				out.print(rs.getRow()+"、");
				out.print("<a href=NoticeShowStudent.jsp?noticeId="+rs.getString("noticeId")+" style=text-decoration:none><font color=blue>"
				+rs.getString("noticeName") + "</font></a>&nbsp;&nbsp;&nbsp;</td>");
				out.print( "<td>"+rs.getString("time")+"</td>");
				out.println("</tr>");
			}
%>
</table>
</div>  
<div id="Layer6" style="background-image:url(images/main02.jpg)">
<font size="4" color="blue"><B><br>作业上传</B></font><br>
<hr>
</div>
<div id="Layer14" >
<table>
<%while (RS.next()) {
                out.println("<tr><td>");
				out.print(RS.getRow()+"、");
				out.print("<a href=HomeworkStudentShow.jsp?homeworkNo="+RS.getString("homeworkNo")+" style=text-decoration:none><font color=blue>"
				+RS.getString("homeworkNo") + "</font></a>"+
				"&nbsp;&nbsp;&nbsp;</td><td>");
				out.print( RS.getString("time"));
				out.println("</td>");
				out.println("</tr>");
			}
%>
</table>
</div>  
<div id="Layer7" style="background-image:url(images/main02.jpg)">
<font size="4" color="blue"><B><br>资料下载</B></font><br>
<hr>
</div>
<div id="Layer15" >
<table>
<%while (result.next()) {
                out.println("<tr><td>");
				out.print(result.getRow()+"、");
				out.print("<a href=DataStudentdownload.jsp style=text-decoration:none><font color=blue>"
				           +result.getString("dataContent") + "</font></a>&nbsp;&nbsp;</td>");
				out.print("<td>");
				out.print( result.getString("time"));
				out.println("</td>");
				out.println("</tr>");
			}
%>
</table>
</div>  
<div id="Layer8" style="background-image:url(images/main02.jpg)">
<font size="4" color="blue"><B><br>留言信息</B></font><br>
<hr>
</div> 
<div id="Layer16">
<table>
<%while (RESULT.next()) {
                out.println("<tr><td>");
				out.print(RESULT.getRow()+"、");
				out.print("<a href=MessageStudent.jsp style=text-decoration:none><font color=blue>"
				           +RESULT.getString("userName") + "</font></a>&nbsp;&nbsp;&nbsp;</td>");
				out.print("<td>"+ RESULT.getString("time"));
				out.println("</td>");
				out.println("</tr>");
			}
%>
</table>
</div>
<div id="Layer9">
<font size="4" color="blue"><B>友情链接</B></font><br>
</div>    
<div id="Layer11">
<%request.setCharacterEncoding("utf-8");//设置编码格式 
String UserNo=(String)session.getAttribute("UserNo");
 Statement ststudent = conn.createStatement();
   ResultSet rsstudent = ststudent.executeQuery("select * from studentInfo where(studentNo='"+UserNo+"')");
   if(rsstudent.next()){
    String tname=rsstudent.getString("studentName");
%>
<font color=white>欢迎登录本系统<br><br></font>
<li><font color=white>学号:<%=UserNo%></font><br><br></li>
<li><font color=white>姓名:<%=tname%></font><br><br></li>
<li><a href="personalInfo.jsp" style="text-decoration:none;">个人中心</a><br><br></li>
<li><a href="EditStudent.jsp" style="text-decoration:none;">修改信息</a><br><br></li>
[<a href="Login.jsp" style="text-decoration:none;color:blue">退出系统</a>]
<%} %>
</div>
<div id="Layer3"><p>copy right@  </p><br></div>

<div id="Layer12">
<table  width="800" height="330" background="images/school.png">
<tr><td>
</td>
</tr>
</table>
</div> 
</body>
</html>
<%conn.close();%>