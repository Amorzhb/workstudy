<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@include file="_checkSession.jsp" %>
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
		<title>勤工俭学</title>
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
		<%@include file="top.jsp" %>
		<div class="main">
		<form action="employer/index!password.htm" method="post" onsubmit="return check()">
		<input type="hidden" name="action" value="update"/>
		<input type="hidden" name="employer.id" value="<s:property value="employer.id" />" />
		<input type="hidden" name="employer.username" value="<s:property value="employer.username" />" />
		<input type="hidden" name="p" id="p" value="<s:property value="employer.password" />" />
		<input type="hidden" name="employer.deleted" value="<s:property value="employer.deleted" />" />
		<input type="hidden" name="employer.name" id="name" value="<s:property value="employer.name"/>"/>
		<input type="hidden" name="employer.address" value="<s:property value="employer.address"/>"/>
		<input type="hidden" name="employer.tel" id="tel" value="<s:property value="employer.tel"/>"/>
		<input type="hidden" name="employer.introduce" value="<s:property value="employer.introduce"/>"/>
		<input type="hidden" name="employer.industy" id="tel" value="<s:property value="employer.industy"/>"/>
		<input type="hidden" name="employer.scope" value="<s:property value="employer.scope"/>"/>
		<table width="100%" cellpadding="2" cellspacing="2">
				<tr><td height="50px" style="border-bottom: 2px dotted #977C00">
				<span style="color: #977C00;font-size: 16px;">修改密码</span></td></tr>
				<tr><td style="padding: 10px">
					<table width="100%" cellpadding="2" cellspacing="2">
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">用户类别:</td>
						<td>
						教师
						<span id="cu" style="color: red;"></span></td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">用户名:</td>
						<td><s:property value="employer.username"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">旧密码:</td>
						<td>
						<input type="password" name="password1" id="p1" style="width: 200px"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">新密码:</td>
						<td>
						<input type="password" name="password2" id="p2" style="width: 200px"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">新密码确认:</td>
						<td>
						<input type="password" name="employer.password" id="p3" style="width: 200px"/>
						</td></tr>
						<tr><td colspan="2" align="center">
						<input type="button" value="返回" onclick="javascript:location.href='index.htm'"/>
							<input type="submit" value="修改"/>
						</td></tr>
					</table>
				</td></tr>
			</table></form></div>
			
			<script>
				function check(){
					if(document.getElementById("p").value != document.getElementById("p1").value){
							alert("旧密码不正确");
							return false;
					}else if(document.getElementById("p2").value == ""){
						alert("请输入新密码");
						return false;
					}else if(document.getElementById("p3").value == ""){
						alert("请输入密码确认");
						return false;
					}else if(document.getElementById("p2").value != document.getElementById("p3").value){
						alert("请两次密码不一致");
						return false;
					}
				}
			</script>
		<%@include file="../bottom.jsp"%>
		<s:if test="result=='ok'">
			<script>alert("修改成功");</script>
		</s:if>
	</body>
</html>
