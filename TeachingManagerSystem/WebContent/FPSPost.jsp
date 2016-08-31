<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>
<%
    request.setCharacterEncoding("utf-8");
    String fsno = request.getParameter("fsno");
    //支持可更新的数据集
    Statement st = conn.createStatement(
        ResultSet.TYPE_SCROLL_SENSITIVE,
                                ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = st.executeQuery(
              "select * from studentInfo where (studentNo='"+fsno+"')");
if(rs.next()){                               //移动到第一行
rs.updateString("passWord",request.getParameter("fpword"));
rs.updateRow();}
else if(rs.next()==false)
{out.println("<script language=javascript>alert(无此用户信息，请先注册！'); window.location='Login.jsp';</script>");}
conn.close();
response.sendRedirect("Login.jsp");
%>
              