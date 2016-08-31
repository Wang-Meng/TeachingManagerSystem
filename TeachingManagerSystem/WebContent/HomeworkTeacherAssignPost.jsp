<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*;import java.util.*;import java.text.*"%>
<%@ include file="conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
java.util.Date now = new java.util.Date();
DateFormat d1 = DateFormat.getDateInstance();//默认语言（汉语）下的默认风格（MEDIUM风格，比如：2008-6-16 20:54:53）
String str1 = d1.format(now);
Statement st = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,    //前后移动，感知
ResultSet.CONCUR_UPDATABLE);   //可更新
// 4.执行SQL查询，返回数据集
ResultSet rs = st.executeQuery("select * from homeworkInfo");
//新增数据
rs.moveToInsertRow();                //移动到新增行
rs.updateString("homeworkNo",request.getParameter("Ntname"));
rs.updateString("teacherName",request.getParameter("Nname"));
rs.updateString("homeworkContent",request.getParameter("Ncontent"));
rs.updateString("time",str1);
rs.insertRow();                           //插入新增行
//5.关闭数据库连接  
conn.close();
response.sendRedirect("HomeworkTeacherShow.jsp");
%>
