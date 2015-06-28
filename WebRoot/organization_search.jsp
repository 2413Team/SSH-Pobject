<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>搜索组织</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/team_jr.css">


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
					href="getMyOrganization.action" class="fanhui">返回我的组织</a>
				<form action="searchOrganization.action" method="post">
					<input type="text" name="organization.name" class="text" /> <input
						type="submit" class="submit" value="搜 索" />
				</form>
				<table border="1" cellspacing="0" cellpadding="0"
					bordercolor="#d3d3d3" width="730px;">
					<tr>
						<td>组织名</td>
						<td>创建人</td>
						<td>人员数</td>
						<td>组织类型</td>
						<td></td>
					</tr>
					<s:iterator value="organizationList" id="list">
						<tr>
							<td><a href="detailOrganization.action?organizationid=${list.id}"><s:property value="#list.getName()"/></a></td>
							<td><s:property value="#list.getUser().getName()"/></td>
							<td><s:property value="#list.getMembercount()"/></td>
							<td><s:property value="#list.getOrganizationType().getValue()"/></td>
							<td><a href="sendRequest.action?organziationid=${list.id}">申请加入</a></td>
						</tr>
					</s:iterator>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
