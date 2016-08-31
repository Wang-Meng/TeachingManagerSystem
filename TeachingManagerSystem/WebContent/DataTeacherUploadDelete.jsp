<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
String dataId = request.getParameter("dataId");
String sql = "delete  from data where dataId=" +dataId ;
Statement st = conn.createStatement();
st.executeUpdate(sql);
conn.close();
response.sendRedirect("DataTeacherUploadShow.jsp");
%>