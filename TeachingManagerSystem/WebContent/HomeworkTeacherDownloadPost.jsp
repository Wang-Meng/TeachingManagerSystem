<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String filename=request.getParameter("filename");
//告诉客户端出现下载框，，并指定下载框中的文件名
response.setHeader("Content-Disposition","attachment;filename="+filename);
//指定文件类型
//response.setContentType("image/jpeg");
//指定文件
RequestDispatcher rd=request.getRequestDispatcher("/upload/"+filename);
//有了这句话txt和htm好像就无法下载了，也可能是曾经打开过的都不能下载了
rd.forward(request,response);
%>