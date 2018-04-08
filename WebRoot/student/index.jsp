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
		<form action="student/index!update.htm" method="post">
		<input type="hidden" name="student.id" value="<s:property value="student.id" />" />
		<input type="hidden" name="student.username" value="<s:property value="student.username" />" />
		<input type="hidden" name="student.password" value="<s:property value="student.password" />" />
		<input type="hidden" name="student.deleted" value="<s:property value="student.deleted" />" />
		<table width="100%" cellpadding="2" cellspacing="2">
				<tr><td height="50px" style="border-bottom: 2px dotted #977C00">
				<span style="color: #977C00;font-size: 16px;">我的个人信息</span></td></tr>
				<tr><td style="padding: 10px">
					<table width="100%" cellpadding="2" cellspacing="2">
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">用户类别:</td>
						<td>
						个人
						<span id="cu" style="color: red;"></span></td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">用户名:</td>
						<td><s:property value="student.username"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">密码:</td>
						<td><a href="student/index!password.htm">点击修改密码</a>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">姓名:</td>
						<td><input type="text" name="student.name" id="name" value="<s:property value="student.name"/>" style="width:  200px"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">性别:</td>
						<td>
						<input type="radio" name="student.sex" value="男" <s:if test="#student.sex=='男'"> checked="checked"</s:if> id="sex1" />男
						<input type="radio" name="student.sex" value="女" <s:if test="#student.sex=='女'"> checked="checked"</s:if> id="sex2" />女
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">年龄:</td>
						<td><input type="text" name="student.age" id="age" value="<s:property value="student.age"/>" style="width:  200px"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">电话:</td>
						<td><input type="text" name="student.tel" id="tel" value="<s:property value="student.tel"/>" style="width:  200px"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">个人简介:</td>
						<td>
						<textarea rows="4" cols="50" name="student.introduce"><s:property value="student.introduce"/></textarea>
						</td></tr>
						<tr><td colspan="2" align="center">
							<input type="submit" value="修改"/>
						</td></tr>
					</table>
				</td></tr>
			</table></form></div>
		<%@include file="../bottom.jsp"%>
		<s:if test="result=='ok'">
			<script>alert("修改成功");</script>
		</s:if>
	</body>
</html>
