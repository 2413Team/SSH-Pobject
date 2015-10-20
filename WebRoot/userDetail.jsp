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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<div class="content" style="width:1080px; margin: 0 auto; margin-top: 55px; ">
		<div style="width:100%; height:350px; background:url(pic/userDetailbg.jpg); ">
			<!-- 模仿一下名片的样式写的一个人物资料卡 -->
			<s:iterator value="userlist" id="list">
			<div class="idcard" style="width: 400px; height: 230px; background:url('pic/idcard.png');  margin:50px 0 0 100px; float: left;">
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
			
		</div>

		<div></div>
	</div>
</body>
</html>
