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
		<form action="employer/index!update.htm" method="post">
		<input type="hidden" name="employer.id" value="<s:property value="employer.id" />" />
		<input type="hidden" name="employer.username" value="<s:property value="employer.username" />" />
		<input type="hidden" name="employer.password" value="<s:property value="employer.password" />" />
		<input type="hidden" name="employer.deleted" value="<s:property value="employer.deleted" />" />
		<table width="100%" cellpadding="2" cellspacing="2">
				<tr><td height="50px" style="border-bottom: 2px dotted #977C00">
				<span style="color: #977C00;font-size: 16px;">教师信息</span></td></tr>
				<tr><td style="padding: 10px">
					<table width="100%" cellpadding="2" cellspacing="2">
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">用户:</td>
						<td>
						教师
						<span id="cu" style="color: red;"></span></td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">用户名:</td>
						<td><s:property value="employer.username"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">密码:</td>
						<td><a href="employer/index!password.htm">点击修改密码</a>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">名称:</td>
						<td><input type="text" name="employer.name" id="name" value="<s:property value="employer.name"/>" style="width:  200px"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">电话:</td>
						<td><input type="text" name="employer.tel" id="tel" value="<s:property value="employer.tel"/>" style="width:  200px"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">地址:</td>
						<td>
						<textarea rows="2" cols="50" name="employer.address"><s:property value="employer.address"/></textarea>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">简介:</td>
						<td>
						<textarea rows="4" cols="50" name="employer.introduce"><s:property value="employer.introduce"/></textarea>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">行业:</td>
						<td>
						<textarea rows="2" cols="50" name="employer.industy"><s:property value="employer.industy"/></textarea>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">规模:</td>
						<td><input type="text" name="employer.scope" value="<s:property value="employer.scope"/>" id="scope" style="width:  200px"/>人
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
