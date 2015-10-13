<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>校友网注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/register.css">
	<script language="javascript" src="js/register.js"></script>
	<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
  </head>
  
  <body>
         <div class="content">
             <div class="fenge"><a href="user_login.jsp" class="back">返回登陆</a></div>
             <div class="hello"></div>
             <div class="register">
			 <form action="doRegister.action" method="post" name="registerForm" onsubmit="return everyThingIsOk()" >
      			<h1 id="title">注册：</h1>
      			<input type="text"  name="user.email" required placeholder="请输入邮箱" id="shuru"/>
      			<br>
      			<input type="password"  name="user.password"  required placeholder="请输入密码" id="shuru"/>
      			<br>
      			<input type="password"  name="loginPwdRe" required placeholder="请再次输入密码" id="shuru" onkeyup="return loginPwdIsOk()" />
      			<span id="passIsOk"></span>
      			<br>
      			<input type="text"  name="user.name" required placeholder="请输入真实姓名" id="shuru"/>
      			<br>  
      			<s:radio label="性别" name="user.sex " list="#{'M':'男','F':'女'}" 	value="1"  cssClass="sex"/>		
      			<input type="text"  name="user.address" required placeholder="请输入您的地址" id="shuru"/>  		 
      			<br>
      			<input type="text"  name="user.phone" required placeholder="请输入您的电话号码" id="shuru"   onkeyup="return teleIsOk()"/>
      			<span id="phoneIsOk"></span>
      			<br>
      		 	<input type="text" class="Wdate"	name="birthday" onfocus="WdatePicker({lang:'zh-cn',})" required placeholder="请选择您的生日" id="shuru"/>
      			<input type="submit" value=" 注册" class="button" >
      		 </form>
			</div>
         </div>
  </body>
</html>
