<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/user_index.css">

  </head>
  <%@ include file="header.jsp" %>
  <body>
	<div class="content">
		<div class="left">
		
			<!--这是用户信息 -->
			<div class="userinformation ">
				<div class="touxiang">
					<!-- 这里头像动态获取从数据库里面得到 -->
					<img alt="" src="pic/touxiang.jpg">
				</div>
				<div class="xinming">
					<a href="detailMe.action"><s:property value="#session.user.name" /></a> <br/>
					<span><s:property value="#session.user.address" /></span>
				</div>
			</div>
			
			<!-- 这是用户信息下面的几个分支 -->
			<ul class="leftlist">
				<li><a href="#">所有动态</a></li>
				<li><a href="getMyOrganization.action">我的组织</a></li>
				<li><a href="detailMe.action">个人资料</a></li>
				<li><a href="#">我的请求</a></li>
				<li><a href="#">我的私信</a></li>
			</ul>
		</div>
		
		<div class="center">
			<form action="addShuoshuo.action" method="post" class="shuoshuofabu">
				<textarea name="shuoshuo.value" cols="66" rows="4"  required class="text"></textarea> <br/>
				<input type="submit" value=" 发  表" class="button">
			</form>
			<div class="shuoshuocontent">
				<s:iterator value="shuoList" id="list">
					<div class="shuoshuos">
						<div class="shuoshuostop">
							<div class="shuoshuostouxiang">头像</div>
							<div class="shuoshuosusername" ><s:property value="#list.getUser().getName()"/>&ensp; <s:property value="#list.getCreatdate()" /></div>
						</div>
						<div class="shuoshuosbottom">
							<div class="shuoshuosvalue">
								<div class="send">
									<div style="margin-left: 7px; width:96%;">
										<s:property value="#list.getValue()" />
									</div>
									<div class="arrow"></div>
								</div>
							</div>
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
		<div class="right">
					
		</div>
	</div>
</body>
</html>
