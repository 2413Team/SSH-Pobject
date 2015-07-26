<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'admin_user.jsp' starting page</title>
    
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
    <%@ include file="admin_frame.jsp" %>
	<div class="main">
		<form action="searchUserGroup.action" method="post">
			<input type="text" name="user.name" class="text" /> <input
				type="submit" class="submit" value="搜 索" />
		</form>
		<a href="admin_addgroup.jsp">添加群组</a>
		<table border="1" cellspacing="0" cellpadding="0"
			bordercolor="#d3d3d3" width="730px;">
			<tr>
				<td>id</td>
				<td>类型</td>
				<td>操作</td>
			</tr>
			<s:iterator value="groupList" id="list">
				<tr>
					<td><s:property value="#list.getId()" /></td>
					<td><s:property value="#list.getValue()" /></td>
					<td><a href="deleteGroup.action?groupid=${list.id }">删除</a></td>
				</tr>
			</s:iterator>
		</table>
	</div>
</body>
</html>
