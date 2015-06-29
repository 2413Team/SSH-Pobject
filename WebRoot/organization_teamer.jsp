<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>组织内的成员</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/team_teamer.css">


</head>

<body>
	<div class="content">
		<div class="k"></div>
		<div class="detail">
			<div class="name_k">
				<img alt="" src="pic/tx.jpg"><br>
				<p><s:property value="#session.user.name" /></p>
			</div>
			<div class="txt_k">
				<form action="addShuoshuo.action" method="post">
					<textarea name="shuoshuo.value" cols="75" rows="8" required></textarea>
					<br> <a href="#" class="first"> <img alt=""
						src="pic/photo.jpg"></a> <a href="#" class="second"> <b>照片</b></a>
					<input type="submit" value=" 发  表" class="button">
				</form>
			</div>
			<div class="list_k">
				<ul>
					<li><a href="getShuoshuos.action" class="first">所 有 动 态</a></li>
					<li><a href="getMyOrganization.action">我 的 组 织</a></li>
					<li><a href="detailMe.action">个 人 资 料</a></li>
					<li><a href="haveRequest.action">我 的 请 求</a></li>
					<li><a href="getSixinS.action">我 的 私 信</a></li>
				</ul>
			</div>
			<div class="detail_k">
				<a href='#' class="first"><img src="pic/fanhui.png" /></a> <a
					href="#" class="fanhui">返回成员列表</a>
					
				<s:iterator value="userlist" id="list">
					<div class="teamer_detail">
						<div class="left">
							<div class="img">
								<img src="" />
							</div>
							<span><s:property value="#list.getName()"/></span> <a href="sixin_send.jsp?getterid=${list.id}">发送私信</a>
						</div>
						<div class="right">
							<ul class="top">
								<li>邮箱帐号：<s:property value="#list.getEmail()"/></li>
								<li>联系手机：<s:property value="#list.getPhone()"/></li>
								<li>联系地址：<s:property value="#list.getAddress()"/></li>
							</ul>
							<span>已加入的组织：</span>
							<ul class="bottom">
								<s:iterator value="uoList" id="uolist">
									<li>	<a href="detailOrganization.action?organizationid=${uolist.organization.id}">
											<s:property value="#uolist.getOrganization().getName()" />
									</a></li>
								</s:iterator>
							</ul>
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
	</div>
</body>
</html>
