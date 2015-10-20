<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'organization.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/organization.css">

  </head>
  
  <body>
  <div class="content" >
  	<!-- 上面是组织搜索模块，能进行搜索，跳转一个单独的页面 -->
    <div class="top" >
			<div class="search">
				组织搜索
				<form action="searchOrganization.action" method="post">
					<input type="text" name="organization.name" class="text" />
					<input	type="submit" class="submit" value="搜 索" />
				</form>
			</div>
		</div>
    
    <div class="bottom" >
    	现有组织模块
    </div>
   </div>
  </body>
</html>
