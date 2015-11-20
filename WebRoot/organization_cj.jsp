<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>创建一个组织</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/team_cj.css">


</head>

<body>
	<div class="content">
		<div class="k"></div>
		<div class="detail">
			<div class="list_k">
				<ul>
					<li><a href="getShuoshuos.action" class="first">所 有 动 态</a></li>
					<li><a href="getMyOrganization.action">我 的 组 织</a></li>
					<li><a href="detailMe.action">个 人 资 料</a></li>
				</ul>
			</div>
			<div class="detail_k">
				<a href='#' class="first"><img src="pic/fanhui.png" /></a> <a
					href="getMyOrganization.action" class="fanhui">返回我的组织</a>
				<div class="cj">
					<form action="addOrganization.action" method="post">
						<label>组织名</label>：<input type="text" class="text"
							name="organization.name" />
						<div class="fenlei">
							<s:radio name="typeid" label="所属分类" labelposition="top"
								list="#{1:'班级',2:'部门'}" />
						</div>
						<input type="submit" class="submit" value="创 建" />
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
