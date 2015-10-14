<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/user_index.css">

  </head>
  
  <body>
	<div class="content">
		<div class="left">
		
			<!--这是用户信息 -->
			<div class="userinformation ">
				<div class="touxiang">
					<!-- 这里头像动态获取从数据库里面得到 -->
					<img alt="" src="pic/touxiang.jpg">
				</div>
				<div class="xinming">
					<a href="#">有四个字的名字</a> <br/>
					<span>地区</span>
				</div>
			</div>
			
			<!-- 这是用户信息下面的几个分支 -->
			<ul class="leftlist">
				<li><a href="#">所有动态</a></li>
				<li><a href="#">我的组织</a></li>
				<li><a href="#">个人资料</a></li>
				<li><a href="#">我的请求</a></li>
				<li><a href="#">我的私信</a></li>
			</ul>
		</div>
		
		<div class="center">
			<form action="addShuoshuo.action" method="post" class="shuoshuofabu">
				<textarea name="shuoshuo.value" cols="66" rows="4"  required class="text"></textarea> <br/>
				<input type="submit" value=" 发  表" class="button">
			</form>
			<div class="shuoshuocontent">
				<div class="shuoshuos">
					<div class="shuoshuosleft">1</div>
					<div class="shuoshuosright">
						<div class="shuoshuostop"></div>
						<div class="shuoshuosbuttom"></div>
					</div>
				</div>
				<div class="shuoshuos">内容模拟</div>
				<div class="shuoshuos">内容模拟</div>
				<div class="shuoshuos">内容模拟</div>
				<div class="shuoshuos">内容模拟</div>
				<div class="shuoshuos">内容模拟</div>
				<div class="shuoshuos">内容模拟</div>
				<div class="shuoshuos">内容模拟</div>
			</div>
		</div>
		<div class="right"></div>
	</div>
</body>
</html>
