<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*;import java.util.*;import java.text.*"%>
<%@ include file="conn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
java.util.Date now = new java.util.Date();
DateFormat d1 = DateFormat.getDateInstance();//默认语言（汉语）下的默认风格（MEDIUM风格，比如：2008-6-16 20:54:53）
String str1 = d1.format(now);
String messageNo   = (String)session.getAttribute("messageNo");
Statement st = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,    //前后移动，感知
ResultSet.CONCUR_UPDATABLE);   //可更新
// 4.执行SQL查询，返回数据集
ResultSet rs = st.executeQuery("select * from messageInfo where messageNo="+messageNo);
if(rs.next()){           
rs.updateString("replyName",request.getParameter("Ntname"));
rs.updateString("replyContent",request.getParameter("Ncontent"));
rs.updateString("replytime",str1); 
rs.updateRow();
}                      
//5.关闭数据库连接  
conn.close();
response.sendRedirect("MessageTeacher.jsp");
%>
