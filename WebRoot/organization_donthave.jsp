<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>你还没有加入组织</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/team_no.css">


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
				<p>尚未加入组织，是否要：</p>
				<a href="organization_cj.jsp" class="first"><img
					src="pic/bt_cj.png" /></a> <a href="organization_search.jsp"><img
					src="pic/bt_jr.png" /></a>
			</div>
		</div>
	</div>
</body>
</html>
