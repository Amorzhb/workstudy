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
		<form action="admin/exercise!addExercise.htm" method="post" onsubmit="return check()">
		<input type="hidden" name="action" value="add"/>
		<%-- <input type="hidden" name="task.employer.id" value="<s:property value="employer.id" />" /> --%>
		<table width="100%" cellpadding="2" cellspacing="2">
				<tr><td height="50px" style="border-bottom: 2px dotted #977C00">
				<span style="color: #977C00;font-size: 16px;">添加综合素质信息</span></td></tr>
				<tr><td style="padding: 10px">
					<table width="100%" cellpadding="2" cellspacing="2">
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">学生姓名:</td>
						<td>						
						<select name="exercise.studentId" style="width:200px">
							<c:forEach var="item"  items="${studentlist}" step="1">
								<option value="${item.id }" selected="selected">
								${item.username }
								</option>
							</c:forEach>
																																			
						</select>
						</td></tr>				
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">思想素质:</td>
						<td>
						<select name="exercise.thought" style="width:200px">
							<option value="1">优秀</option>
							<option value="2">良好</option>
							<option value="3">差</option>
						</select>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">知识:</td>
						<td>
						<select name="exercise.knowledge" style="width:200px">
							<option value="1">优秀</option>
							<option value="2">良好</option>
							<option value="3">差</option>
						</select>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">文化素质:</td>
						<td>
						<select name="exercise.culture" style="width:200px">
							<option value="1">优秀</option>
							<option value="2">良好</option>
							<option value="3">差</option>
						</select>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">方法:</td>
						<td>
						<select name="exercise.method" style="width:200px">
							<option value="1">优秀</option>
							<option value="2">良好</option>
							<option value="3">差</option>
						</select>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">能力:</td>
						<td>
						<select name="exercise.ability" style="width:200px">
							<option value="1">优秀</option>
							<option value="2">良好</option>
							<option value="3">差</option>
						</select>
						</td></tr>						
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">学业:</td>
						<td>
						<select name="exercise.studies" style="width:200px">
							<option value="1">优秀</option>
							<option value="2">良好</option>
							<option value="3">差</option>
						</select>
						</td></tr>	
							<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">心理:</td>
						<td>
						<select name="exercise.mentally" style="width:200px">
							<option value="1">优秀</option>
							<option value="2">良好</option>
							<option value="3">差</option>
						</select>
						</td></tr>
							<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">情感:</td>
						<td>
						<select name="exercise.feeling" style="width:200px">
							<option value="1">优秀</option>
							<option value="2">良好</option>
							<option value="3">差</option>
						</select>
						</td></tr>
							<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">健康:</td>
						<td>
						<select name="exercise.healthy" style="width:200px">
							<option value="1">优秀</option>
							<option value="2">良好</option>
							<option value="3">差</option>
						</select>
						</td></tr>
							<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">状态:</td>
						<td>
						<select name="exercise.deleted" style="width:200px">
							<option value="0">可用</option>
							<option value="1">已删除</option>
						</select>
						</td></tr>			
						
						<tr><td colspan="2" align="center">
							<input type="submit" value="提交"/>
							<input type="button" value="返回" onclick="back()"/>
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
					}else if(document.getElementById("date").value == ""){
						alert("请输入结束日期");
						return false;
					}
				};
				window.back = function(){
					window.location.href="admin/exercise!list.htm";
				};
			</script>
		
	</body>
</html>
