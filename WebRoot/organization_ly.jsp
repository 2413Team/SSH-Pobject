<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'team.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/team_ly.css">


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
			                      <li><a href="user_index.jsp" class="first">所 有 动 态</a></li>
			                      <li><a href="team.jsp">我 的 组 织</a></li>
			                      <li><a href="user_ziliao.jsp">个 人 资 料</a></li>
			                      <li><a href="haveRequest.action">我 的 请 求</a></li>
			                      <li><a href="getSixinS.action">我 的 私 信</a></li>
			                     </ul>
                           </div>
                           <div class="detail_k">
								<a href='#' class="first"><img src="pic/fanhui.png"/></a>
								<a href="#" class="fanhui">返回我的组织</a>
								<div class="liuyan_k">
									<div class="liuyan">
										<ul>
											<li class="first">姜维川</li>
											<li class="second">time</li>
											<li class="third">发送的消息</li>
										</ul>
										<ul>
											<li class="first">姜维川</li>
											<li class="second">time</li>
											<li class="third">发送的消息</li>
										</ul>
									</div>
									<div class="fasong">
										<form action="" method="post">
											<textarea rows="10" cols="3" class="text" style="overflow:hidden" ></textarea>
											<input type="submit" class="submit" value="发 送"/>
										</form>
									</div>
								</div>
                           </div>
                 </div>
           </div>
  </body>
</html>
