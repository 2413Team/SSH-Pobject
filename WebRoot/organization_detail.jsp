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
    
    <title>My JSP 'detailOrganization.jsp' starting page</title>
    
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
	<table border="1" cellpadding="1" cellspacing="1">
		<tr>
			<th>OrganizationId</th>
			<th>OrganizationName</th>
			<th>MemberCount</th>
			<th>Type</th>
			<th>Creater</th>
			<th>CreatDate</th>
		</tr>
		<s:iterator value="organization" id="organ">
			<tr>
				<td><s:property value="#organ.getId()" /></td>
				<td><s:property	value="#organ.getName()" /></td>
				<td><s:property value="#organ.getMembercount()" /></td>
				<td><s:property value="#organ.getOrganizationType().getValue()" /></td>
				<td><s:property value="#organ.getUser().getName()" /></td>
				<td><s:property value="#organ.getCreatdate()" /></td>
			</tr>
		</s:iterator>	
	</table>
	<table border="1" cellpadding="1" cellspacing="1">
	<tr>
			<th>Email</th>
			<th>Name</th>
			<th>Sex</th>
			<th>Birthday</th>
			<th>Address</th>
			<th>Phone</th>
			<th>发送私信</th>
			<th>查看详细信息</th>
		</tr>
		<s:iterator value="userList" id="list">
			<tr>
				<td><s:property value="#list.getUser().getEmail()" /></td>
			    <td><s:property value="#list.getUser().getName()" /></td>
			    <td><s:property value="#list.getUser().getSex()" /></td>
			    <td><s:property value="#list.getUser().getBirthday()" /></td>
			    <td><s:property value="#list.getUser().getAddress()" /></td>
			    <td><s:property value="#list.getUser().getPhone()" /></td>
			    <td><a href="sixin_send.jsp?getterid=${list.user.id}">发送私信</a></td>
			    <td><a href="detailUser.action?userid=${list.user.id }">查看详细信息</a></td>
			</tr>
		</s:iterator>	
	</table>
</body>
</html>
