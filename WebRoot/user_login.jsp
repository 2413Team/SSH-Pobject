<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>校友网登陆</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/login.css">

  </head>
   
  <body>
          <div class="login_top"></div>
         <div class="login">
                <a href="login.jsp"  class="logo"><img alt="" src="pic/LOGO_lg.gif" /></a> 
                
                <div class="p">
                 <p><b>四川交通职业技术学院</b><br></p>
                <p class="p2"><b>校友网</b></p>
                 </div>
                
         <form method="post" action="doLogin.action" name="loginForm">
				<input type="text"  name="user.email"  placeholder="请输入邮箱账号"  required  class="userName" id="shuru"/>
				<a href="user_register.jsp">注册账号</a>
				<br>
				<input type="password" name="user.password" placeholder="请输入密码"  required class="passWord" id="shuru"/>
				<a href="#">忘记密码？ </a>
				<br>
				<input type="submit" value=" 登  录" class="button" >
		</form>
		
           </div>
           <div class="login_bottom"></div>
  </body>
</html>
