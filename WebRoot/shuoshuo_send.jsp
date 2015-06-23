<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shuoshuo_send.jsp' starting page</title>
    
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
  	<s:form action="addShuoshuo.action"  method="post">
  		<s:textarea name="shuoshuo.value" label="说说内容" labelposition="left" rows="15" cols="30"/>
  		<s:submit value="发送"/>
  	</s:form>
  	
  	<ul>
		<s:iterator value="shuoshuoList" id="list">
			<li><s:property value="#list.getValue()"/></li>
		</s:iterator>
	</ul>
  </body>
</html>
