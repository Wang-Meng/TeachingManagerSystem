<%@ page language="java" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
String shenfen=request.getParameter("shenfen");
if(shenfen.equals("教师"))
{
response.sendRedirect("ForgetPasswordTeacher.jsp");
}
else if(shenfen.equals("学生"))
{
response.sendRedirect("ForgetPasswordStudent.jsp");
}
%>