<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎来到校友网</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/header.css">


  </head>
  
  <body>
          <div class="header">    
          	<div class="content">
          		<a class="logo" href="user_index.jsp"></a>
          		<ul class="left">
          			<li><a href="#" style="background: url('pic/homebutton.png');"></a></li>
          			<li><a href="#" style="background: url('pic/zuzhibutton.png');"></a></li>
          			<li><a href="#" style="background: url('pic/schoolbutton.png');"></a></li>
          		</ul>
          		<div class="sousuo">
          			<form action="">
          				<input type="text" class="sousuotext" placeholder="你要搜索什么" />
          				<input type="submit" class="submit" value=" "/>
          			</form>
          		</div>
          		<ul class="right">
          			<li><a href="user_login.jsp">退出</a></li>
          			<li><a href="#" style="background: url('pic/xinxibutton.png');"></a></li>
          			<li><a href="#" style="background: url('pic/shezhibutton.png');"></a></li>
          		</ul>
          	</div>         
          </div>
  </body>
</html>
