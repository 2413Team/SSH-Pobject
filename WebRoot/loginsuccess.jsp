<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginsuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    	<h1>登录成功</h1>
    	<ul>
    	    <li><s:property value="#session.user.id"/></li>
    	    <li><s:property value="#session.user.email"/></li>
    	    <li><s:property value="#session.user.password"/></li>
    	    <li><s:property value="#session.user.name"/></li>
    	    <li><s:property value="#session.user.sex"/></li>
    	    <li><s:property value="#session.user.birthday"/></li>
    	    <li><s:property value="#session.user.address"/></li>
    	    <li><s:property value="#session.user.phone"/></li>
    	</ul>
    	
    	<a href="haveRequest.action">查看请求</a>
    	<a href="getSixinS.action">查看私信</a>
    	<a href="organization_search.jsp">组织搜索</a>
  </body>
</html>
