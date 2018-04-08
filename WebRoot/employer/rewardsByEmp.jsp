<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<title>奖惩信息</title>
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
	<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="tableBorder">
    <tbody>
      <tr>
        <th align="center" colspan="7" style="height: 23px">奖惩信息</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="7" align="left" class="txlrow" height="20px">
        </td>
      </tr>
   		<tr align="center" bgcolor="#799AE1">  
        <td align="center" class="txlHeaderBackgroundAlternate">姓名</td>
        <td align="center" class="txlHeaderBackgroundAlternate">日期</td>
        <td align="center" class="txlHeaderBackgroundAlternate">内容</td>
        <td align="center" class="txlHeaderBackgroundAlternate">类型</td>
        <td align="center" class="txlHeaderBackgroundAlternate">状态</td>
        <td align="center" class="txlHeaderBackgroundAlternate">操作</td>
      </tr>
      <s:iterator value="list" var="t" id="t">
      <tr bgcolor="#DEE5FA">
   	   	 <td height="30px" align="center" class="txlrow">	   	   	
			<select  disabled="disabled" id="studentId" name="rewards.studentId" style="width:140px">
				<c:forEach var="item"  items="${studentlist}" step="1">
				<option value="${rewards.studentId }" selected="selected">
					${item.username }
				</option>
				</c:forEach>
			</select>			 
   	   	 </td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.date"/></td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.content"/></td>
   	   	 <td align="center" class="txlrow"><s:if test="#t.type==1">奖励</s:if><s:else>违纪</s:else> </td>
   	   	 <td align="center" class="txlrow"><s:if test="#t.deleted==1">已删除</s:if><s:else>可用</s:else> </td>	   	
   	   	 <td align="center" class="txlrow">
	   	   	 <a href="employer/rewards!rewardsMsg.htm?rewards.id=<s:property value="#t.id" />">查看</a>
	   	   	 <a href="employer/rewards!updateRewards.htm?rewards.id=<s:property value="#t.id" />">修改</a>
	   	   	 <a href="employer/rewards!rewardsByEmp.htm?action=delete&rewards.id=<s:property value="#t.id" />" onclick="javascript:confirm('确定删除该条信息?')">删除</a>
   	   	 </td>
   	  </tr>
   	  </s:iterator>
	</tbody>
	</table>
	</div>
	<%@include file="../bottom.jsp"%>
	</body>
</html>
