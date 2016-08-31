<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
String homeworkId = request.getParameter("homeworkId");
String sql = "delete  from homeworkInfo where homeworkId=" + homeworkId;
Statement st = conn.createStatement();
st.executeUpdate(sql);
conn.close();
response.sendRedirect("HomeworkTeacherShow.jsp");
%>