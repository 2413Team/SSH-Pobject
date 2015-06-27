<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>用户密码修改</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/pass_gai.css">


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

				<a href="ziliao.jsp" class="first"><img alt=""
					src="pic/fanhui.png"></a> <a href="ziliao.jsp">返回个人资料</a>
				<form action=" ziliao.jsp" method="post" name="registerForm"
					onsubmit="return everyThingIsOk()">
					<div id="shuru">
						<label>旧 密 码:</label> <input type="password" name="loginPwdRe"
							required placeholder="请输入旧密码" class="height"
							onkeyup="return loginPwdIsOk()" />

					</div>
					<br>

					<div id="shuru">
						<label>新 密 码:</label> <input type="password" name="loginPwd"
							required placeholder="请输入新密码" class="height" />
					</div>
					<br>

					<div id="shuru">
						<label>密码确认:</label> <input type="password" name="loginPwdRe"
							required placeholder="请再次输入密码" class="height"
							onkeyup="return loginPwdIsOk()" /> <span id="passIsOk"></span>
					</div>
					<br> <input type="submit" value=" 确 认 修 改" class="button">
				</form>
			</div>
		</div>
	</div>
</body>
</html>
