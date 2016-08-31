<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
String studentId = request.getParameter("studentId");
//支持可更新的数据集
Statement st = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
ResultSet rs = st.executeQuery("select * from studentInfo where studentId="+ studentId);
 //移动到第一行
if(rs.next()){     
rs.updateString("studentName", request.getParameter("studentName"));
rs.updateString("studentNo", request.getParameter("studentNo"));
rs.updateString("password", request.getParameter("password"));
rs.updateString("Age",request.getParameter("Age"));
rs.updateString("Sex",request.getParameter("Sex"));
rs.updateString("QQ",request.getParameter("QQ"));
rs.updateString("Email",request.getParameter("Email"));
rs.updateString("studentPrefession",request.getParameter("studentPrefession"));
rs.updateRow();
}
conn.close();
response.sendRedirect("personalInfo.jsp");
%>