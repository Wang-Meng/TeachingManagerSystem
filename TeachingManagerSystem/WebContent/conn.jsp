<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
  //1-装载驱动程序
Class.forName("net.sourceforge.jtds.jdbc.Driver");
//2-建立连接
/* String url = "jdbc:jtds:sqlserver://127.0.0.1:1433;DatabaseName=CourseTeaching";
String user = "sa";
String password = "sa"; */
String url = "jdbc:mysql://127.0.0.1:3306/courseteaching?useUnicode=true&characterEncoding=utf-8";
String user = "root";
String password = "123456";
String driver = "com.mysql.jdbc.Driver";
Class.forName(driver);
Connection conn = DriverManager.getConnection( url, user, password);
%>