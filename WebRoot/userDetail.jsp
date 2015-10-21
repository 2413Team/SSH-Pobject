<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userDetail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/userDetail.css">

  </head>
  
  <body>
	<div class="content" >
		<!-- 模仿了一个桌面，拟物的方式来描述 -->
		<div class="table" >
		
			<!-- 模仿一下名片的样式写的一个人物资料卡 -->
			<s:iterator value="userlist" id="list">
			<div class="idcard" >
				<img alt="" src="pic/touxiang.jpg" style="width:80px; height:110px; margin: 25px 0 0 25px; float: left;">
				<div style="margin: 25px 0 0 6px; float: left; color: #666;">
					<p>姓名：<s:property value="#list.getName()"/></p>
					<p>邮箱：<s:property value="#list.getEmail()"/></p>
					<p>性别：<s:property value="#list.getSex()"/></p>
					<p>联系电话：<s:property value="#list.getPhone()"/></p>
					<p>联系地址：<s:property value="#list.getAddress()"/></p>
				</div>
			</div>
			</s:iterator>
			
			 <!-- 显示当前组织吧  -->		 
			<div class="bottom"   style="margin-top: 300px; margin-left:-380px; float: left; color: #fff; ">
    		<p style="font-size: 32px; margin-top: 5px;">已经加入的组织</p>
    		<s:if test="uoList.size()!=0">
			<s:iterator value="uoList" id="uolist">			
				<a href="detailOrganization.action?organizationid=${uolist.organization.id}"  class="orgblock" >
					<img alt="" src="pic/loginbg.jpg" style="width: 92%; height: 100px; margin-left:7px;margin-top:10px; display: block;">
					<p style="font-size: 24px; text-indent: 15px;  line-height: 24px; padding-top: 15px;"><s:property value="#uolist.getOrganization().getName()"/></p>
					<p style="font-size: 16px; text-indent: 15px; line-height: 16px; margin-top: 30px; ">创建者:<s:property value="#uolist.getUser().getName()"/></p>
					<p style="font-size: 16px; text-indent: 15px; line-height: 16px; margin-top: 10px;">人数:<s:property value="#uolist.getOrganization().getMembercount()"/></p>
				</a>
			</s:iterator>
			</s:if>
			<s:else>
				<p style="margin-top: 10px;">你还没有没加入过任何组织哦！快来加入一个吧！<a href="searchOrganization.action?organization.name=">查看组织</a></p>
			</s:else>
			</div>
		</div>
	</div>
</body>
</html>
