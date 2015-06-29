<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
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
              <div class="fenge"></div>
               <div class="register">
               <a href="user_login.jsp">返回登陆</a>
			<form action="doRegister.action" method="post" name="registerForm"
				onsubmit="return everyThingIsOk()">
				<div id="shuru">
					<label>邮箱账号:</label> <input type="text" name="user.email" required
						placeholder="请输入邮箱账号" class="height" onkeyup="return mailIsOk()" />
					<span id="mailIsOk"></span>
				</div>
				<br>
				<div id="shuru">
					<label>密&nbsp&nbsp&nbsp&nbsp码:</label> <input type="password"
						name="user.password" required placeholder="请输入密码" class="height" />
				</div>
				<br>
				<div id="shuru">
					<label>密码确认:</label> <input type="password" name="loginPwdRe"
						required placeholder="请再次输入密码" class="height"
						onkeyup="return loginPwdIsOk()" /> <span id="passIsOk"></span>
				</div>
				<br>
				<div id="shuru">
					<label>姓&nbsp&nbsp&nbsp&nbsp名:</label> <input type="text" name="user.name"
						required placeholder="请输入真实姓名" class="height" />
				</div>
				<br>
				<div class="sex">
					<s:radio label="是男是女" name="user.sex " list="#{'M':'男','F':'女'}"
						value="1" />
				</div>
				<br>
				<div id="shuru">
					<label>出生日期:</label> <input type="text" class="Wdate"
						name="birthday" onfocus="WdatePicker({lang:'zh-cn',})" />
				</div>
				<br>
				<div id="shuru">
					<label>联系电话:</label> <input type="text" name="user.phone" required
						placeholder="请输入您的电话号码" onkeyup="return teleIsOk()" class="height" />
					<span id="phoneIsOk"></span>
				</div>
				<br>
				<div id="shuru">
					<label>联系地址:</label> <input type="text" name="user.address"
						required placeholder="请输入您的详细地址" class="height" />
				</div>
				<br> <input type="submit" value=" 注册" class="button">
			</form>
		</div>
         </div>
  </body>
</html>
