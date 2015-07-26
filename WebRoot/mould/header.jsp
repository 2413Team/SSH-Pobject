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
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${basePath}css/mould/header.css">

  </head>
  
  <body>
	<div class="header">
		<div class="headercontent">
			<a href="" class="logo">这是LOGO</a>
			<ul class="headerleftlist">
				<li><a href="">主页</a></li>
				<li><a href="">好友</a></li>
				<li><a href="">组织</a></li>
			</ul>
			<s:form cssClass="headersearch" theme="simple">
				<s:textfield placeholder="请搜索"  cssClass="headertextfield"/>
				<s:submit cssClass="headersubmit"/>
			</s:form>
			<ul class="headerrightlist">
				<li><a href="">退出</a></li>
				<li><a href="">私信</a></li>
				<li><a href="">请求</a></li>
			</ul>
		</div>
	</div>
</body>
</html>
