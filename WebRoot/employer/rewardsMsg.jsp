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
			<script type='text/javascript' src='/workstudy/dwr/interface/orderDao.js'></script>
  <script type='text/javascript' src='/workstudy/dwr/engine.js'></script>
  <script type='text/javascript' src='/workstudy/dwr/util.js'></script>
       
	</head>
	<body>
		<%@include file="top.jsp" %>
		<div class="main">
			<table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
    <tbody>
      <tr>
        <th align=center colspan=1 style="height: 23px">奖惩信息</th>
      </tr>
    	<tr bgcolor="#DEE5FA">
   	   	 <td height="30px" align="center" class="txlrow">
   	   	 	<table width="100%" cellpadding="2" cellspacing="2">   	   	 		
   	   	 		<tr>
   	   	 		<td align="left">姓名:<s:property value="rewards.studentName" escape="false"/></td>
   	   	 		</tr>
   	   	 		<tr>
   	   	 		<td align="left" height="50" valign="bottom">
   	   	 		时间:<s:property value="rewards.date"/>&nbsp;&nbsp;&nbsp;&nbsp;   	   	 		
   	   	 		</td>
   	   	 		</tr>
   	   	 		<tr>
   	   	 		<td align="left" height="50" valign="bottom">类型:<s:property value="rewards.type"/>/<s:if test="rewards.type==1">奖励</s:if><s:elseif test="rewards.type==2">违纪</s:elseif>
   	   	 		&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
   	   	 		<tr><td align="left" height="50" valign="bottom">状态:<s:property value="rewards.deleted"/>/<s:if test="rewards.deleted==0">可用</s:if><s:elseif test="rewards.deleted==1">已删除</s:elseif>  </td>
   	   	 		</tr>
   	   	 	</table>
   	   	 </td>
   	   	 </tr>  	   	
		</tbody></table>
		</div>
		<%@include file="../bottom.jsp"%>
	</body>
</html>
