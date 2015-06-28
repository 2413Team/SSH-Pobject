 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>我的组织</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/team_yes.css">


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
				<textarea name="Description" cols="75" rows="8"></textarea>
				<br> <a href="#" class="first"> <img alt=""
					src="pic/photo.jpg"></a> <a href="#" class="second"> <b>照片</b></a>
				<input type="submit" value=" 发  表" class="button">
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
				<a href="organization_cj.jsp" class="underline1">创建组织</a>
				 <a href="organization_search.jsp" class="underline2">加入更多组织</a>
				<s:iterator value="userList" id="list">
					<div class="detail_team">
						<h1>-组织名</h1>
						<a href="#">退出组织</a>
						<ul class="first">
							<li>组织名：</li>
							<li>创建人：</li>
							<li>成员：</li>
						</ul>
						<ul class="second">
							<li><s:property value="#list.getOrganization().getName()"/></li>
							<li><s:property value="#list.getUser().getName()"/></li>
							<li><s:property value="#list.getOrganization().getMembercount()"/></li>
						</ul>
						<a href="detailOrganization.action?organizationid=${list.organization.id}" class="chakan">查看所有成员</a> 
						<a href="getAllLiuyan.action?organizationid=${list.organization.id}" class="underline">查看组织留言板</a>
					</div>
				</s:iterator>
			</div>
		</div>
	</div>
</body>
</html>
