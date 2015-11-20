<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>欢迎来到校友网</title>
    
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
					<a href="detailUser.action?userid=${sessionScope.user.id}" style="color: #000;"><s:property value="#session.user.name" /></a> <br/>
					<span><s:property value="#session.user.address" /></span>
				</div>
			</div>
			
			<!-- 这是用户信息下面的几个分支 -->
			<ul class="leftlist">
				<li><a href="getShuoshuos.action">所有动态</a></li>
				<li><a href="getMyOrganization.action">我的组织</a></li>
				<li><a href="detailUser.action?userid=${sessionScope.user.id}">个人资料</a></li>
			</ul>
		</div>
		<!-- 中间的说说模块 -->
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
			<!-- 暂定做个请求模块~~~~ -->
			<p style="font-size: 18px;">请求</p>
			<div class="qingqiu" style="">
				<s:iterator value="orList" id="list">
					<div class="qingqiublock" >
						<p style="width: 85%; margin-left:17px; margin-top:10px; float: left; font-size: 14px;"><s:property value="#list.getUser().getName()"/>申请加入您创建的组织【<s:property value="#list.getOrganization().getName()" />】，是否接受？</p>
						<div style="float: right; margin-top: 15px; margin-right: 15px; ">
							<a href="agreeRequest.action?organizationid=${list.organization.id}&userid=${list.user.id}&orid=${list.id}" style="color: orange;">接受</a>
							<a href="disagreeRequest.action?organizationid=${list.organization.id}&userid=${list.user.id}&orid=${list.id}" style="color: orange;">拒绝</a>
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
	</div>
</body>
</html>
