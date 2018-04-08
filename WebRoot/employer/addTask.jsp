
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
			<script type="text/javascript" src="DatePicker/WdatePicker.js"></script>
       
	</head>
	<body>
		<%@include file="top.jsp" %>
		<div class="main">
		<form action="employer/task!addTask.htm" method="post" onsubmit="return check()">
		<input type="hidden" name="action" value="add"/>
		<input type="hidden" name="task.employer.id" value="<s:property value="employer.id" />" />
		<table width="100%" cellpadding="2" cellspacing="2">
				<tr><td height="50px" style="border-bottom: 2px dotted #977C00">
				<span style="color: #977C00;font-size: 16px;">发布新职位</span></td></tr>
				<tr><td style="padding: 10px">
					<table width="100%" cellpadding="2" cellspacing="2">
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">职位编号:</td>
						<td>
						<input type="text" name="task.num" readonly="readonly" value="<s:property value="newNum" />"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">职位标题:</td>
						<td>
						<input type="text" name="task.title" id="title" style="width: 200px"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">职位内容:</td>
						<td>
						<textarea rows="8" cols="60" name="task.content" id="content"></textarea>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">招聘人数:</td>
						<td>
						<input type="text" name="task.count" id="count"/>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">薪资方式:</td>
						<td>
						<select name="task.type">
							<option value="1">按小时</option>
							<option value="2">按天</option>
							<option value="3">按月</option>
						</select>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">薪资待遇:</td>
						<td><input type="text" name="task.price" id="price" style="width:  200px"/>元
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">结束时间:</td>
						<td><input type="text" name="task.enddate" id="enddate" onfocus="WdatePicker()" style="width:  200px"/>
						</td></tr>
						<tr><td colspan="2" align="center">
							<input type="submit" value="发布"/>
						</td></tr>
					</table>
				</td></tr>
			</table></form></div>
			<script>
				function check(){
					if(document.getElementById("title").value == ""){
						alert("请输入标题");
						return false;
					}else if(document.getElementById("content").value == ""){
						alert("请输入内容");
						return false;
					}else if(document.getElementById("count").value == ""){
						alert("请输入招聘人数");
						return false;
					}else if(document.getElementById("price").value == ""){
						alert("请输入待遇");
						return false;
					}else if(document.getElementById("enddate").value == ""){
						alert("请输入结束日期");
						return false;
					}
				}
			</script>
		<%@include file="../bottom.jsp"%>
		<s:if test="result=='ok'">
			<script>alert("发布成功");</script>
		</s:if>
	</body>
</html>
