<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<title>资助信息</title>
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
		<form action="employer/rewards!updateRewards.htm" method="post" onsubmit="return check()">
		<input type="hidden" name="action" value="update"/>
		<input type="hidden" id="id" name="rewards.id" value="${rewards.id}"/>
		<table width="100%" cellpadding="2" cellspacing="2">
				<tr>
					<td height="50px" style="border-bottom: 2px dotted #977C00">
					<span style="color: #977C00;font-size: 16px;">资助信息</span>
					</td>
				</tr>
				<tr><td style="padding: 10px">
				<table width="100%" cellpadding="2" cellspacing="2">   	   	 		
   	   	 		<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">学生姓名:</td>
						<td>						
						<select id="studentId" name="support.studentId"  style="width:140px">
							<c:forEach var="item"  items="${studentlist}" step="1">
								<option value="${support.studentId }" selected="selected">
								${item.username }
								</option>
							</c:forEach>
																																			
						</select>
						</td></tr>				
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">资助信息:</td>
						<td>
						<textarea rows="8" cols="60"  name="support.qualifications" id="qualifications"><s:property value='support.qualifications'/></textarea>
						</td></tr>
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">资助人数:</td>
						<td><input  value="<s:property value='support.number'/>" name="support.number" id="number" style="width:  200px"/>
						</td></tr>						
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">资助标准:</td>
						<td>
						<select id="standard"  name="support.standard" style="width:140px" >
							<option value="1" <s:if test="#support.standard==1"> checked="checked"</s:if>>aaa</option>
							<option value="2" <s:if test="#support.standard==2"> checked="checked"</s:if>>bbb</option>
						</select>
						</td></tr>	
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">资助类型:</td>
						<td>
						<select name="support.type" style="width:140px">
							<option value="1" <s:if test="#support.type==1"> checked="checked"</s:if>>xxx</option>
							<option value="2" <s:if test="#support.type==2"> checked="checked"</s:if>>xxx</option>
						</select>
						</td></tr>	
						<tr><td width="30%" bgcolor="#d6dff7" align="right" height="30px">备注:</td>
						<td><textarea rows="8" cols="60" name="support.remarks" id="remarks"><s:property value='support.remarks'/></textarea>
						</td></tr>									
						<tr><td colspan="2" align="center">
							<input type="submit" value="提交"/>
						</td></tr>
   	   	 	</table>
   	   	 </td>
   	   	 </tr>  	   	
		</table></form></div>
		<%@include file="../bottom.jsp"%>
		<s:if test="result=='ok'">
			<script>alert("编辑成功");</script>
		</s:if>		
	</body>
</html>
