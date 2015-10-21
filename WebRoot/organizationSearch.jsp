<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'organization.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/organization.css">

  </head>
  
  <body>
  <div class="content" >
  	<!-- 上面是组织搜索模块，能进行搜索，跳转一个单独的页面 -->
    <div class="top" >
    		<p style="margin-top: 5px; font-size: 22px;">组织搜索</p>
			<div class="search">
				<form action="searchOrganization.action" method="post">
					<input type="text" name="organization.name" class="text" placeholder="搜索组织吧！"/>
					<input	type="submit" class="submit" value="   " />
				</form>
			</div>
		</div>
    
    <div class="bottom" >
    		<p style="font-size: 32px; margin-top: 5px;">查找结果</p>
    		<s:if test="organizationList.size()!=0">
			<s:iterator value="organizationList" id="list">			
				<a href="sendRequest.action?organziationid=${list.id}"  class="orgblock" >
					<img alt="" src="pic/loginbg.jpg" style="width: 92%; height: 100px; margin-left:7px;margin-top:10px; display: block;">
					<p style="font-size: 24px; text-indent: 15px;  line-height: 24px; padding-top: 15px;"><s:property value="#list.getName()"/></p>
					<p style="font-size: 16px; text-indent: 15px; line-height: 16px; margin-top: 15px; ">创建者:<s:property value="#list.getUser().getName()"/></p>
					<p style="font-size: 16px; text-indent: 15px; line-height: 16px; margin-top: 10px; ">类型:<s:property value="#list.getOrganizationType().getValue()"/></p>
					<p style="font-size: 16px; text-indent: 15px; line-height: 16px; margin-top: 10px;">人数:<s:property value="#list.getMembercount()"/></p>
				</a>
			</s:iterator>
			</s:if>
			<s:else>
				<p style="margin-top: 10px;">你要找的组织并没有找到哦~换个试试？？<a href="#">查看组织</a></p>
			</s:else>
		</div>
   </div>
  </body>
</html>
