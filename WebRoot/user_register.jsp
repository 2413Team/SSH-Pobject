<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
      <s:form action="doRegister.action" method="post">
      	<s:textfield label="邮箱" labelposition="left" name="user.email" />
      	<s:password label="密码" labelposition="left" name="user.password"/>
      	<s:textfield label="姓名" labelposition="left" name="user.name"/>
      	<s:radio label="性别" name="user.sex " list="#{'M':'男','F':'女'}" value="1"/>
      	<s:textfield label="地址" labelposition="left" name="user.address"/>
      	<s:textfield label="电话" labelposition="left" name="user.phone"/>
      	<s:select list="{'1995','1996','1997','1998','1999','2000','2001','2002','2003','2004','2005'}"  label="生日" labelposition="left" name="birthday"/>
      	<s:select list="{'1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'}"  name="birthday"/>
      	<s:select list="{'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29'}"  name="birthday"/>
      	<s:submit value="注册"/>
      </s:form>
  </body>
</html>
