<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'admin_showLog.jsp' starting page</title>
    
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
  <%@include file="admin_frame.jsp" %>
	<div class="main">
		<table border="1" cellspacing="0" cellpadding="0"
			bordercolor="#d3d3d3" width="730px;">
			<tr>
				<td>id</td>
				<td>类型</td>
				<td>操作实体</td>
				<td>操作日期</td>
			</tr>
			<s:iterator value="loglist" id="list">
				<tr>
					<td><s:property value="#list.getId()" /></td>
					<td><s:property value="#list.getMethod" /></td>
					<td><s:property value="#list.getVaule()" /></td>
					<td><s:property value="#list.getDate()" /></td>
				</tr>
			</s:iterator>
		</table>
	</div>
</body>
</html>
