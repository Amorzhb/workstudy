<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<title>综合素质信息</title>
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
        <th align="center" colspan="12" style="height: 23px">综合素质信息</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="12" align="left" class="txlrow" height="20px">
        </td>
      </tr>
   		<tr align="center" bgcolor="#799AE1">  
        <td align="center" class="txlHeaderBackgroundAlternate">思想素质</td>
        <td align="center" class="txlHeaderBackgroundAlternate">知识</td>
        <td align="center" class="txlHeaderBackgroundAlternate">文化素质</td>
        <td align="center" class="txlHeaderBackgroundAlternate">方法</td>        
        <td align="center" class="txlHeaderBackgroundAlternate">能力</td>
        <td align="center" class="txlHeaderBackgroundAlternate">学业</td>
        <td align="center" class="txlHeaderBackgroundAlternate">心理</td>
        <td align="center" class="txlHeaderBackgroundAlternate">情感</td>
        <td align="center" class="txlHeaderBackgroundAlternate">健康</td>
        <td align="center" class="txlHeaderBackgroundAlternate">状态</td>
        <td align="center" class="txlHeaderBackgroundAlternate">操作</td>
      </tr>
      	<s:iterator value="list" var="t" id="t">
    	<tr bgcolor="#DEE5FA">
			 <td align="center" class="txlrow"><s:if test="#t.thought==1">优秀</s:if><s:if test="#t.thought==2">良好</s:if><s:if test="#t.thought==3">差</s:if> </td>
	   	   	 <td align="center" class="txlrow"><s:if test="#t.knowledge==1">优秀</s:if><s:if test="#t.knowledge==2">良好</s:if><s:if test="#t.knowledge==3">差</s:if> </td>
	   	   	 <td align="center" class="txlrow"><s:if test="#t.culture==1">优秀</s:if><s:if test="#t.culture==2">良好</s:if><s:if test="#t.culture==3">差</s:if> </td>
	   	   	 <td align="center" class="txlrow"><s:if test="#t.method==1">优秀</s:if><s:if test="#t.method==2">良好</s:if><s:if test="#t.method==3">差</s:if> </td>
			 <td align="center" class="txlrow"><s:if test="#t.ability==1">优秀</s:if><s:if test="#t.ability==2">良好</s:if><s:if test="#t.ability==3">差</s:if> </td>
	   	   	 <td align="center" class="txlrow"><s:if test="#t.studies==1">优秀</s:if><s:if test="#t.studies==2">良好</s:if><s:if test="#t.studies==3">差</s:if> </td>   	   	
	   	   	 <td align="center" class="txlrow"><s:if test="#t.mentally==1">优秀</s:if><s:if test="#t.mentally==2">良好</s:if><s:if test="#t.mentally==3">差</s:if> </td>
	   	   	 <td align="center" class="txlrow"><s:if test="#t.feeling==1">优秀</s:if><s:if test="#t.feeling==2">良好</s:if><s:if test="#t.feeling==3">差</s:if> </td>
	   	   	 <td align="center" class="txlrow"><s:if test="#t.healthy==1">优秀</s:if><s:if test="#t.healthy==2">良好</s:if><s:if test="#t.healthy==3">差</s:if> </td>
	   	   	 <td align="center" class="txlrow"><s:if test="#t.deleted==1">已删除</s:if><s:else>可用</s:else> </td>	   	
	   	   	 <td align="center" class="txlrow">
	   	   	  	<a href="student/exercise!exerciseMsg.htm?exercise.id=<s:property value="#t.id" />">查看</a>
	   	   	 </td>
   	   	 </tr>
   	   	 </s:iterator>
		</tbody></table>
		</div>
		<%@include file="../bottom.jsp"%>
	</body>
</html>
