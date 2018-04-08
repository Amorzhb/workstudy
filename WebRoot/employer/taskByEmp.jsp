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
			<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="tableBorder">
    <tbody>
      <tr>
        <th align="center" colspan="7" style="height: 23px">已发布任务</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="7" align="left" class="txlrow" height="20px">
        </td>
      </tr>
   		<tr align="center" bgcolor="#799AE1">
      	<td height="20px" align="center" valign="middle" class="txlHeaderBackgroundAlternate">任务编号</td>
        <td align="center" class="txlHeaderBackgroundAlternate">标题</td>
        <td align="center" class="txlHeaderBackgroundAlternate">招聘人数</td>
        <td align="center" class="txlHeaderBackgroundAlternate">薪资待遇</td>
        <td align="center" class="txlHeaderBackgroundAlternate">发布时间</td>
        <td align="center" class="txlHeaderBackgroundAlternate">结束时间</td>
        <td align="center" class="txlHeaderBackgroundAlternate">操作</td>
      </tr>
      	<s:iterator value="list" var="t" id="t">
    	<tr bgcolor="#DEE5FA">
   	   	 <td height="30px" align="center" class="txlrow"><s:property value="#t.num"/> </td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.title"/></td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.count"/></td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.price"/>/<s:if test="#t.type==1">小时</s:if><s:elseif test="#t.type==2">天</s:elseif><s:else>月</s:else> </td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.starttime"/></td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.enddate"/></td>
   	   	 <td align="center" class="txlrow">
   	   	  <a href="employer/task!taskMsg.htm?task.id=<s:property value="#t.id" />">查看</a>
   	   	 <a href="employer/task!updateTask.htm?task.id=<s:property value="#t.id" />">修改</a>
   	   	 <a href="employer/task!taskByEmp.htm?action=delete&task.id=<s:property value="#t.id" />" onclick="javascript:confirm('确定删除该条信息?')">删除</a>
   	   	 </td>
   	   	 </tr>
   	   	 </s:iterator>
		</tbody></table>
		</div>
		<%@include file="../bottom.jsp"%>
	</body>
</html>
