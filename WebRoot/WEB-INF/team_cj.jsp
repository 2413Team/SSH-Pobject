<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'team.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="CSS/team_cj.css">


  </head>
  
  <body>
    <div class="content">
                 <div class="k"></div>
                 <div class="detail">
                           <div class="name_k">
                                     <img alt="" src="pic/tx.jpg"><br>
                                     <p>杨奇</p>
                           </div>
                           <div class="txt_k">
                                     <textarea name="Description" cols="75" rows="8"  ></textarea><br>
                                    <a href="#" class="first">  <img alt="" src="pic/photo.jpg"></a> 
                                    <a href="#"class="second">    <b>照片</b></a>
                                    <input type="submit" value=" 发  表" class="button" >
                           </div>
                           <div class="list_k">
			                      <ul>
			                      <li  ><a href="index.jsp" class="first">所 有 动 态</a></li>
			                      <li><a href="#">我 的 组 织</a></li>
			                      <li><a href="mine.jsp">我 的 动 态</a></li>
			                      <li><a href="ziliao.jsp">个 人 资 料</a></li>
			                      <li><a href="sixin.jsp">我 的 私 信</a></li>
			                     </ul>
         
                           </div>
                           <div class="detail_k">
								<a href='#' class="first"><img src="pic/fanhui.png"/></a>
								<a href="#" class="fanhui">返回我的组织</a>
								<div class="cj">
										<form action="" method="post">
									            <label>组织名</label>：<input type="text" class="text"/>
									            <div class="fenlei">
									          		  <s:radio  name="fenlei" label="所属分类" labelposition="top" list="{'班级','部门'}" />
									            </div>
									            <input type="submit" class="submit" value="创 建"/>      
										</form>
								</div>
                           </div>
                 </div>
           </div>
  </body>
</html>
