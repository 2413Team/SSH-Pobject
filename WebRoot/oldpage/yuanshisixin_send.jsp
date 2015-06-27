<%@ page language="java" import="java.util.*,com.opensymphony.xwork2.ActionContext;" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sixin_send.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
	String getterid=request.getParameter("getterid");
	ActionContext.getContext().getValueStack().set("getterid",getterid);
	%>
    <s:form action="sendSixin.action">
    	<input type="text" name="sixin.userByGetuserid.id" value="<%=request.getParameter("getterid")%>"/>
    	<s:textarea label="私信内容" labelposition="left" name="sixin.value" rows="15"/>
    	<s:submit value="发送"/>
    </s:form>
  </body>
</html>
