<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<base href="<%=basePath%>" />
		<title>注册</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/style.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/lrtk.css" />
       <link rel="stylesheet" href="inc/css.css" type="text/css" />
      </head>
	<body>
<div class="top_main"><div class="inner">
	<table width="100%" border="0" cellpadding="0" cellspacing="7">
		<tr><td width="50%">勤工助学-任务管理网!</td>
			<td width="50%" align="right">
			<a href="">返回首页</a> | 
			<a href="#" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath%>');">设为首页</a>
		  | <a href="javascript:window.external.AddFavorite('<%=basePath%>','勤工助学-任务管理网')">收藏本站</a>
			</td>
		</tr>
	</table>
</div></div>
<div class="logo">
	<table width="100%" height="50px" border="0">
	<tr><td width="300px" height="50px">
		<a href="" title="勤工助学-任务管理网"><img src="images/logo.gif" border="0" height="50px" width="200px"/></a>
	</td><!-- <td align="right" valign="middle">
			您还没有登陆&nbsp;&nbsp;&nbsp;<a href="login.jsp">登陆</a> || <a href="register.jsp">注册</a>
	</td> --></tr>
	</table>
</div>
		<div class="main">
		<form id="f" action="baseAction!reg.htm" method="post" onsubmit="return check()">
			<table width="100%" cellpadding="2" cellspacing="2">
				<tr><td height="50px" style="border-bottom: 2px dotted #977C00"><span style="color: #977C00;font-size: 16px;">添加角色</span></td></tr>
				<tr><td style="padding: 10px">
					<table width="100%" cellpadding="2" cellspacing="2">
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">用户类别:</td>
						<td>
						<input type="radio" name="role" value="1"/>学生
						<input type="radio" name="role" value="2"/>老师
						<span id="cu" style="color: red;"></span></td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">用户名:</td>
						<td><input type="text" name="username" id="username" style="width:  300px"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">密码:</td>
						<td><input type="password" name="password" id="password" style="width:  300px"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">密码确认:</td>
						<td><input type="password" name="password1" id="password1" style="width:  300px"/>
						</td></tr>
						<tr><td colspan="2" align="center">
							<input align="right" type="submit" value="确认"/>
						</td></tr>
					</table>
				</td></tr>
			</table></form>
		</div>
		<script type="text/javascript">
			function check(){
				var r = document.getElementsByName("role");
				if(r[0].checked == false && r[1].checked == false){
					alert("请选择用户类别");
					return false;
				}else if(document.getElementById("username").value == ""){
					alert("请输入用户名");
					return false;
				}else if(document.getElementById("password").value == ""){
					alert("请输入密码");
					return false;
				}else if(document.getElementById("password1").value == ""){
					alert("请输入密码确认");
					return false;
				}else if(document.getElementById("password").value != document.getElementById("password1").value){
					alert("请两次密码不一致");
					return false;
				}
			}
		</script>
		<%@include file="bottom.jsp"%>
		
<s:if test="result=='ok'">
	<script>alert("注册成功，请及时修改您的信息");
	window.location.href="register.jsp";
	</script>
</s:if>
	</body>
</html>
