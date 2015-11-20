<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎来到校友网</title>
    
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
    		<p style="font-size: 32px; margin-top: 5px;">已经加入的组织</p>
    		<s:if test="userList.size()!=0">
			<s:iterator value="userList" id="list">			
				<div style="float: left; margin-right: 50px;">
					<a href="detailOrganization.action?organizationid=${list.organization.id}"  class="orgblock" >
						<img alt="" src="pic/loginbg.jpg" style="width: 92%; height: 100px; margin-left:7px;margin-top:10px; display: block;">
						<p style="font-size: 24px; text-indent: 15px;  line-height: 24px; padding-top: 15px; overflow: hidden; height:24px;"><s:property value="#list.getOrganization().getName()"/></p>
						<p style="font-size: 16px; text-indent: 15px; line-height: 16px; margin-top: 30px; ">创建者:<s:property value="#list.getUser().getName()"/></p>
						<p style="font-size: 16px; text-indent: 15px; line-height: 16px; margin-top: 10px;">人数:<s:property value="#list.getOrganization().getMembercount()"/></p>
					</a>
					<a href="quitOrganization.action?organizationid=${list.organization.id}" style="float: right; display:block; margin-top: 100px; margin-left: -150px; color:#333;" href="quitOrganization.action?organizationid=${uolist.organization.id}" >退出组织</a>
					<a href="getAllLiuyan.action?organizationid=${list.organization.id}" style="float: right; display:block; margin-top: 150px; margin-left: -50px; color:#333;" href="quitOrganization.action?organizationid=${uolist.organization.id}" >进入聊天室</a>
				</div>
			</s:iterator>
			</s:if>
			<s:else>
				<p style="margin-top: 10px;">你还没有没加入过任何组织哦！快来加入一个吧！<a href="searchOrganization.action?organization.name=">查看组织</a></p>
			</s:else>
		</div>
   </div>
  </body>
</html>
