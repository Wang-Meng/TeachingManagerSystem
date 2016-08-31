<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.jspsmart.upload.*"%>
<jsp:useBean id="mySmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<%@ page import="java.sql.*"%>
<%@ include file="conn.jsp"%>


<%
   //设置编码格式 
    request.setCharacterEncoding("utf-8");
    String UserNo=(String)session.getAttribute("UserNo");
    //获取系统时间并格式化输出
    java.text.SimpleDateFormat formatter=new java.text.SimpleDateFormat("yyyy-MM-dd");
    java.util.Date Now=new java.util.Date();
    String time=formatter.format(Now);
//上载附件
try
{
request.setCharacterEncoding("GBK");
mySmartUpload.initialize(pageContext);
mySmartUpload.service(request,response);
mySmartUpload.upload();
String filename=mySmartUpload.getFiles().getFile(0).getFileName();
String datapath="/download/";
//文件保存的目录为upload
mySmartUpload.save(datapath);
 //enctype="multipart/form-data"导致直接取是取不到值；
//su.getRequest().getParameterValues();取数组值
//su.getRequest().getParameter();取单个参数单个值             
String dataContent     =mySmartUpload.getRequest().getParameter("dataContent");
String datasender      =mySmartUpload.getRequest().getParameter("datasender");
String dataremark      =mySmartUpload.getRequest().getParameter("remark");
 //支持可更新的数据集
Statement st = conn.createStatement();
st.executeUpdate("INSERT INTO data(dataContent,datasender,teacherNo,dataremark,datapath,time,datafilename) values('"+dataContent+"','"+datasender+"','"+UserNo+"','"+dataremark+"','"+datapath+"','"+time+"','"+filename+"')"); 
 }
catch(Exception e)
{ 
e.printStackTrace();
}  
   
 
 conn.close();
response.sendRedirect("DataTeacherUploadShow.jsp");
%>
