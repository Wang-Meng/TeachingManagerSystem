<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
String noticeId = request.getParameter("noticeId");
String sql = "delete  from Notice where noticeId=" + noticeId;
Statement st = conn.createStatement();
st.executeUpdate(sql);
conn.close();
response.sendRedirect("Notice.jsp");
%>