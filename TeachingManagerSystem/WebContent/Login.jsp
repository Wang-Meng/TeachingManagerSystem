<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
    <title>登录</title>
  </head>
  <body background="images/bgpicture.png">
  <br><br>
  <h1 align="center"><font size="10" color="white">JAVA Web辅助教学管理系统</font></h1><br>
  <hr>
    <form method="post" action="LoginPost.jsp"><br><br>
      <table align="center" width="350" height="265" background="images/bgpicture02.png">
        <tr><td align="center"><br><br><br><br><br>
                     账 号&nbsp;&nbsp;<input type="text" name="userno" size="19">&nbsp;<!-- <a href=Register.jsp><font size="2" color="blue" style="text-decoration:none">快速注册</font></a> --><br>  <br>
                     密 码&nbsp;&nbsp;<input type="password" name="password">&nbsp;<a href=ForgetPassword.jsp><font size="2" color="blue" style="text-decoration:none">忘记密码</font></a><br>
        
        <p >身份:
        <input type="radio" name="usertype" value="教师" checked>教师
        <input type="radio" name="usertype" value="学生">学生</p>
        
        <input style=" width:45px; height:25px;background:#69F" type="submit" value="登录">
        </td>
        </tr>       
      </table>
    </form>
  </body>
</html>