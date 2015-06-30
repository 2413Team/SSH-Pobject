<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminframe.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/admin_index.css">

  </head>
  
  <body>
  		<div class="header">
        <img src="pic/header_left.jpg"  />
        <ul style="list-style:none;">
             <li>当前用户：${LoginId} &nbsp;&nbsp;</li>
             <li><a href="user_login.jsp">退出系统</a></li>
        </ul>
    </div>
    
    <div class="nav">
         <ul style="list-style:none;">
              <li><a href="admin_index.jsp">主页</a></li>
              <li><a href="admin_user.jsp">用户管理</a></li>
              <li><a href="admin_organization.jsp">组织管理</a></li>
              <li><a href="admin_group.jsp">群组管理</a></li>
               <li><a href="getLog.action">查看日志</a></li>
         </ul>
    </div>
  </body>
</html>
