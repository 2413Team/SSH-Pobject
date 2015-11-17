<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>发送私信</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/sixin_fb.css">


</head>

<body>
	<div class="content">
		<div class="k"></div>
		<div class="detail">
			<div class="detail_k">
				<div class="detail_bdm">
					<s:form action="sendSixin.action">
						收信人:
						<input type="text" name="sixin.userByGetuserid.id" value="<%=request.getParameter("getterid")%>" style="border: none; background: none;"  readonly="readonly"  />
						<s:textarea label="私信内容" labelposition="top" name="sixin.value" 	rows="15" cols="50" cssClass="sixin"/>
						<s:submit value="发送" cssClass="submit"/>
					</s:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
