<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
String messageNo = request.getParameter("messageNo");
String sql = "delete  from messageInfo where messageNo=" +messageNo ;
Statement st = conn.createStatement();
st.executeUpdate(sql);
conn.close();
response.sendRedirect("MessageTeacher.jsp");
%>