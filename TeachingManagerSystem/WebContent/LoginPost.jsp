<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.util.*"%>
<%@ include file="conn.jsp"%>
<html>
<body>
<%
request.setCharacterEncoding("utf-8");//设置编码格式
String Userno=request.getParameter("userno");//返回账号
String Password=request.getParameter("password");//返回密码
String Usertype=request.getParameter("usertype");//返回登录身份
session.setAttribute("UserType", Usertype);
session.setAttribute("UserNo",Userno);
if(Usertype.equals("教师"))
{
   Statement stteacher1 = conn.createStatement();
   Statement stteacher2 = conn.createStatement();
   ResultSet rsteacher1 = stteacher1.executeQuery("select * from teacherInfo where(teacherNo='"+Userno+"')");
   ResultSet rsteacher2 = stteacher2.executeQuery("select * from teacherInfo where(passWord='"+Password+"')");
   if(rsteacher1.next())
   {
      if(rsteacher2.next())
      {
         response.sendRedirect("TeacherMain.jsp");
      }
      else
      {       
         out.println("<SCRIPT language=javascript>alert('密码不正确，请重新输入！'); window.location='Login.jsp';</script>"); 
      }
    }
   else
   {
      response.sendRedirect("error.jsp");
   }
}
else if(Usertype.equals("学生"))
{
   Statement ststudent1 = conn.createStatement();
   Statement ststudent2 = conn.createStatement();
   ResultSet rsstudent1 = ststudent1.executeQuery("select * from studentInfo where(studentNo='"+Userno+"')");
   ResultSet rsstudent2 = ststudent2.executeQuery("select * from studentInfo where(passWord='"+Password+"')");
   if(rsstudent1.next())
   {
      if(rsstudent2.next())
      {
         response.sendRedirect("StudentMain.jsp");
      }
      else
      {       
         out.println("<SCRIPT language=javascript>alert('密码不正确，请重新输入！'); window.location='Login.jsp';</script>"); 
      }
   }
   else
   {
         response.sendRedirect("error.jsp");
   }
}
%>
</body></html>