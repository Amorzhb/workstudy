<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
			<script type="text/javascript" src="DatePicker/WdatePicker.js"></script>
			<script type='text/javascript' src='/workstudy/dwr/interface/orderDao.js'></script>
  <script type='text/javascript' src='/workstudy/dwr/engine.js'></script>
  <script type='text/javascript' src='/workstudy/dwr/util.js'></script>
       
	</head>
	<body>
	<div class="main">
		<form action="admin/rewards!addRewards.htm" method="post" onsubmit="return check()">
		<input type="hidden" name="action" value="add"/>
		<%-- <input type="hidden" name="task.employer.id" value="<s:property value="employer.id" />" /> --%>
		<table width="100%" cellpadding="2" cellspacing="2">
				<tr><td height="50px" style="border-bottom: 2px dotted #977C00">
				<span style="color: #977C00;font-size: 16px;">添加奖惩信息</span></td></tr>
				<tr><td style="padding: 10px">
					<table width="100%" cellpadding="2" cellspacing="2">
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">学生姓名:</td>
						<td>						
						<select name="rewards.studentId" style="width:140px">
							<c:forEach var="item"  items="${studentlist}" step="1">
								<option value="${item.id }" selected="selected">
								${item.username }
								</option>
							</c:forEach>																																			
						</select>
						</td></tr>				
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">奖惩内容:</td>
						<td>
						<textarea rows="8" cols="60" name="rewards.content" id="content"></textarea>
						</td></tr>						
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">奖惩类型:</td>
						<td>
						<select name="rewards.type" style="width:140px">
							<option value="1">奖励</option>
							<option value="2">违纪</option>
						</select>
						</td></tr>				
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">时间:</td>
						<td><input type="text" name="rewards.date" id="date" onfocus="WdatePicker()" style="width:  200px"/>
						</td></tr>
						<tr><td colspan="2" align="center">
							<input type="submit" value="保存"/>
							<input type="button" value="返回" onclick="back()"/>
						</td></tr>
					</table>
				</td></tr>
			</table></form></div>			
		<s:if test="result=='ok'">
			<script>alert("保存成功");</script>
		</s:if>	
		<script type="text/javascript">
			window.back = function(){
				window.location.href="admin/rewards!list.htm";
			};
		</script>
	</body>
</html>
