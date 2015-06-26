<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改个人资料</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/ziliao_two.css">
	<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>


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
                                   
                                        <a href="ziliao.jsp"  class="first"><img alt="" src="pic/fanhui.png"></a>
                                        <a href="ziliao.jsp">返回个人资料</a>
                            
                            <form action="ziliao.jsp" method="post" name="registerForm" onsubmit="return everyThingIsOk()" >
							            <label>邮箱账号:</label>
							      		<p>272777351@qq.com</p>
							      		<br>
							      		
							      		<div id="shuru">
							      		<label>姓&nbsp&nbsp&nbsp&nbsp名:</label>
							      		<input type="text"  name="name" required placeholder="请输入真实姓名"  class="height" />
							      		</div>
							      		<br>  
							      		
							      		<div class="sex">    
							      		<label>性&nbsp&nbsp&nbsp&nbsp别:</label>  	
								    	<p><input type="radio" value="女" name="sex">女</p> 
							            <p><input type="radio" value="男" name="sex">男</p> 
							            </div>
							            <br>  
							            
							            <div id="shuru">
							            <label>出生日期:</label>
							            <input type="text"  class="Wdate" name="i_date"   onfocus="WdatePicker({lang:'zh-cn',})"/>
							            </div>
							            <br>
							            
							            <div id="shuru">
							            <label>联系电话:</label>
							      		<input type="text"  name="phone" required placeholder="请输入您的电话号码"    onkeyup="return teleIsOk()" class="height"/>
							      		<span id="phoneIsOk"></span>
							      		</div>
							      		<br>
							      		
							      		<div id="shuru">
							     		<label>联系地址:</label>
							      		<input type="text"  name="address" required placeholder="请输入您的详细地址"  class="height"/> 
							      		</div>  		
							      		<br>
							      		<input type="submit" value=" 确认修改" class="button" >
							      		</form>
							      		<a href="pass_gai.jsp" class="pass">密码修改</a>
                           </div>
                 </div>
           </div>
  </body>
</html>
