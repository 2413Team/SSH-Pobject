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
    
    <title>My JSP 'organizationRequest_get.jsp' starting page</title>
    
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
    <ul>
		<s:iterator value="orList" id="list">
			<li>申请人：<s:property value="#list.getUser().getName()"/><br/>
				   申请组织：<s:property value="#list.getOrganization().getName()" /><br/>
				   <a href="agreeRequest.action?organizationid=${list.organization.id}&userid=${list.user.id}&orid=${list.id}">同意</a>
				   <a href="">拒绝</a>
			</li>
		</s:iterator>
	</ul>
  </body>
</html>
