<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
String teacherId = request.getParameter("teacherId");
//支持可更新的数据集
Statement st = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
ResultSet rs = st.executeQuery("select * from teacherInfo where teacherId="+ teacherId);
 //移动到第一行
if(rs.next()){     
rs.updateString("teacherName", request.getParameter("teacherName"));
rs.updateString("teacherNo", request.getParameter("teacherNo"));
rs.updateString("password", request.getParameter("password"));
rs.updateString("Age",request.getParameter("Age"));
rs.updateString("Sex",request.getParameter("Sex"));
rs.updateString("QQ",request.getParameter("QQ"));
rs.updateString("Email",request.getParameter("Email"));
rs.updateString("teacherDept",request.getParameter("teacherDept"));
rs.updateRow();
}
conn.close();
response.sendRedirect("personalInfo.jsp");
%>