<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
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
		<title>用户登陆</title>
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
			<table width="100%" cellpadding="2" cellspacing="2">
				<tr><td height="50px" style="border-bottom: 2px dotted #977C00"><span style="color: #977C00;font-size: 16px;">请输入您的账号和密码登陆本系统</span></td></tr>
				<tr><td height="250px">
					<table width="100%" cellpadding="2" cellspacing="2">
						<tr>
							<td valign="top" height="250px" width="60%" style="border-right: 1px solid;#ECECFF">
							<form action="baseAction!login.htm" method="post" onsubmit="return check()">
							<input type="hidden" name="action" value="login"/>
								<table width="100%" cellpadding="2" cellspacing="2">
									<tr><td colspan="2" align="center" height="20px" style="color: red;">&nbsp;</td></tr>
									<tr><td height="60px" width="40%" align="right">用户名:</td>
									<td><input type="text" name="username" id="username" style="width: 200px" value="" /></td></tr>
									<tr><td height="60px" width="40%" align="right">密&nbsp;码:</td>
									<td><input type="password" name="password" id="password" style="width: 200px" value=""/></td></tr>
									
									<tr>
    <td></td>
    <td><div class="code" id="checkCode" onclick="createCode()" ></div></td>
    <td><a href="#" onclick="createCode()">看不清换一张</a></td>
   </tr>
   <tr>
    <td  height="60px" width="40%" align="right">验证码：</td>
    <td><input style="float:left;" type="text"  id="inputCode" /></td>
    <td>请输入验证码</td>
   </tr>
									
									<tr><td height="60px" width="40%" align="right">类&nbsp;&nbsp;&nbsp;&nbsp;别:</td>
									<td>
									<input type="radio" name="role" value="1"/>学生
									<input type="radio" name="role" value="2"/>老师
									</td></tr>
									<tr><td align="center" colspan="2">
										<input type="submit" value="登陆系统"/>
									</td></tr>
								</table></form>
							</td>
							<td align="center">如果您还没有系统账号，请<a href="register.jsp" style="font-size: 15px">注册</a>登陆</td>
						</tr>
					</table>
				</td></tr>
			</table>
		</div>
		<%@include file="bottom.jsp"%>
		<style type="text/css">
.code 
{
 background:url(code_bg.jpg);
 font-family:Arial;
 font-style:italic;
 color:blue;
 font-size:30px;
 border:0;
 padding:2px 3px;
 letter-spacing:3px;
 font-weight:bolder;
 float:left;
 cursor:pointer;
 width:150px;
 height:60px;
 line-height:60px;
 text-align:center;
 vertical-align:middle;
}
a 
{
 text-decoration:none;
 font-size:12px;
 color:#288bc4;
}
a:hover 
{
 text-decoration:underline;
}
</style>
		<script type="text/javascript">
		var code;
		createCode();
		function createCode() 
		{
		 code = "";
		 var codeLength = 6; //验证码的长度
		 var checkCode = document.getElementById("checkCode");
		 var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
		      'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
		      'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
		 for(var i = 0; i < codeLength; i++) 
		 {
		  var charNum = Math.floor(Math.random() * 52);
		  code += codeChars[charNum];
		 }
		 if(checkCode) 
		 {
		  checkCode.className = "code";
		  checkCode.innerHTML = code;
		 }
		}
		function check(){
			var r = document.getElementsByName("role");
			debugger
			 if(document.getElementById("username").value == ""){
				alert("请输入用户名");
				return false;
			}else if(document.getElementById("password").value == ""){
				alert("请输入密码");
				return false;
			}else if(r[0].checked == false && r[1].checked == false){
				alert("请选择用户类别");
				return false;
			}
			 var inputCode=document.getElementById("inputCode").value;
			 if(inputCode.length <= 0) 
			 {
			
			 }
			 else if(inputCode.toUpperCase() != code.toUpperCase()) 
			 {
			   alert("验证码输入有误！");
			   createCode();
			   return false;
			 }
			   
		}
		</script>
		<s:if test="result=='fail'">
			<script>alert("用户名或密码错误");</script>
		</s:if>
	</body>
</html>
