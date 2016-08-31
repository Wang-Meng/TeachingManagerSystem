<%@page import="com.mysql.jdbc.EscapeTokenizer"%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.text.*,java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
	//设置编码格式 
	request.setCharacterEncoding("utf-8");
	String UserNo = (String) session.getAttribute("UserNo");
	String str = " ";
	Statement ststudent = conn.createStatement();
	ResultSet rsstudent = ststudent.executeQuery("select * from studentInfo where studentNo=" + UserNo);
	if (rsstudent.next()) {
		String tname = rsstudent.getString("studentName");
		//获取系统时间并格式化输出
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		java.util.Date Now = new java.util.Date();
		String time = formatter.format(Now);
		String message = request.getParameter("info");
		//支持可更新的数据集
		Statement st = conn.createStatement();
		st.executeUpdate("INSERT INTO messageInfo(userName, messageContent, time) values('" +tname+"', '" +message+ "', '" +time+ "')"); 
	}
	conn.close();
	response.sendRedirect("MessageStudent.jsp");
%>