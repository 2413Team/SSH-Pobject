<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>组织详情</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/team_cylist.css">


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
				<a href='#' class="first"><img src="pic/fanhui.png" /></a>
				 <a href="getMyOrganization.action" class="fanhui">返回我的组织</a>
				<div class="cy_detail">
					<s:iterator value="userList" id="list">
						<div class="cy">
							<div class="tx"></div>
							<span>姓名：<s:property value="#list.getUser().getName()" /></span> 
							<span>手机号码：<s:property value="#list.getUser().getPhone()" /></span> 
							<a href="sixin_send.jsp?getterid=${list.user.id}">发送私信</a>
							<a href="detailUser.action?userid=${list.user.id}">查看详细资料</a>
						</div>
					</s:iterator>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
