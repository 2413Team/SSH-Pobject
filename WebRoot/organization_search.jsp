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
    
    <title>My JSP 'searchOrganization.jsp' starting page</title>
    
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
    <s:form action="searchOrganization.action" method="post">
    	<s:textfield label="搜索组织" labelposition="left" name="organization.name"/>
    	<s:submit value="提交"/>
    </s:form>
  </body>
  
  <table border="1" cellpadding="1" cellspacing="1">
  	<tr>
   	 	<th>OrganizationId</th>
   	 	<th>OrganizationName</th>
   	 	<th>MemberCount</th>
   	 	<th>Type</th>
   	 	<th>Creater</th>
   	 	<th>CreatDate</th>
   	 	<th>Join</th>
   	</tr>
   	 <s:iterator value="organizationList"  id="list">
   	 	<tr>
   	 		<td><s:property value="#list.getId()"/></td>
   	 		<td><a href="detailOrganization.action?organizationid=${list.id}"><s:property value="#list.getName()"/></a></td>
   	 		<td><s:property value="#list.getMembercount()"/></td>
   	 		<td><s:property value="#list.getOrganizationType().getValue()"/></td>
   	 		<td><s:property value="#list.getUser().getName()"/></td>
   	 		<td><s:property value="#list.getCreatdate()"/></td>
   	 		<td><a href="sendRequest.action?organziationid=${list.id}">加入</a></td>
   	 	</tr>
   	 </s:iterator>
   	</table>
  
</html>
