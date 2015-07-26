<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'admin_index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/admin_index.css">

  </head>
  <%@ include file="admin_frame.jsp" %>
  <body>
    <div class="main">
       <div class="k1">
              <p>当前位置：</p>
       </div>
            <div class="k2">
                <img src="pic/admin_p.gif" />
                <ul style="list-style:none;">
                     <li>当前时间：<%= new Date().toString() %></li>
                     <li><s:property value="#session.user.email" /></li>
                     <li>欢迎进入网站管理中心！</li>
                </ul>
            </div>
            <div class="k3"></div>
            <div class="k4">
                <ul style="list-style:none;">
                     <li>登陆账号：<span><s:property value="#session.user.email" /></span></li>
                        <li>真实姓名：<s:property value="#session.user.name" /></span></li>
                        <li>你好</li>
            </div>
     </div>
  </body>
</html>
