<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String path1 = request.getContextPath();
String basePath1 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
%>
<!-- top  -->
<div class="top_main"><div class="inner">
	<table width="100%" border="0" cellpadding="0" cellspacing="7">
		<tr><td width="50%">勤工助学-任务管理网!</td>
			<td width="50%" align="right">
			<a href="">返回首页</a> | 
			<a href="#" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath1%>');">设为首页</a>
		  | <a href="javascript:window.external.AddFavorite('<%=basePath1%>','')">收藏本站</a>
			</td>
		</tr>
	</table>
</div></div>
<!-- end top -->

<!-- logo  -->
<div class="logo">
	<table width="100%" height="50px" border="0">
	<tr><td width="300px" height="50px">
		<a href="" title=""><img src="images/logo.gif" border="0" height="50px" width="200px"/></a>
	</td><td align="right" valign="middle">
		<%if(session.getAttribute("employer") == null){ %>
			您还没有登陆&nbsp;&nbsp;&nbsp;<a href="login.jsp">登陆</a> || <a href="register.jsp">注册</a>
		<%}else{ %>
			欢迎您&nbsp;&nbsp;&nbsp;${employer.username }<a href="login.jsp">退出</a>
		<%} %>
	</td></tr>
	</table>
</div>
<!-- end logo  -->

<!-- menu -->
<div class="menu"><div id="slatenav">
		<ul>
		<li><a href="employer/index.htm">教师信息</a></li>		
		<li><a href="employer/rewards!addRewards.htm">录入奖惩信息</a></li>
		<li><a href="employer/rewards!list.htm">奖惩信息</a></li>		
		<li><a href="employer/support!list.htm?studentId=''">资助信息</a></li>
		<li><a href="employer/exercise!addExercise.htm">录入综合素质</a></li>
		<li><a href="employer/exercise!list.htm?studentId=''">综合素质信息</a></li>
		</ul>
</div></div>
<!-- end menu -->

<div class="title">
<marquee ><b>学生资助</b>
</marquee>
</div>