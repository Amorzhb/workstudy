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
	<div class="main" style="height: 551px; width: 907px; ">
			<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="tableBorder">
    <tbody>
      <tr>
        <th align="center" colspan="1" style="height: 23px">奖惩信息</th>
      </tr>
    	<tr bgcolor="#DEE5FA">
   	   	 <td height="30px" align="center"  class="txlrow">
   	   	 	<table width="100%" cellpadding="2" cellspacing="2">   	   	 		
   	   	 		<tr>
   	   	 		<td align="left">姓名:&nbsp; 
	   	   	 		<select  disabled="disabled" id="studentId" name="rewards.studentId" style="width:150px;height:25px">
					<c:forEach var="item"  items="${studentlist}" step="1">
					<option value="${rewards.studentId }" selected="selected">
						${item.username }
					</option>
					</c:forEach>
					</select>
				</td>
   	   	 		</tr>
   	   	 		<tr>
   	   	 		<td align="left" height="50" valign="bottom">
   	   	 		时间:&nbsp; <input style="width:150px;height:25px" value="<s:property value="rewards.date"/>"/>  	   	 		
   	   	 		</td>
   	   	 		</tr>
   	   	 		<tr>
   	   	 		<td align="left" height="50" valign="bottom">类型:&nbsp;   	   	 		
   	   	 		<select name="rewards.type" style="width:150px;height:25px">
						<option value="1"<s:if test="#rewards.type==1"> checked="checked"</s:if>>奖励</option>
						<option value="2"<s:if test="#rewards.type==2"> checked="checked"</s:if>>违纪</option>
				</select> 
   	   	 		</td></tr>
   	   	 		<tr><td align="left" height="50" valign="bottom">状态:&nbsp;
   	   	 		<select name="rewards.deleted" style="width:150px;height:25px">
						<option value="0"<s:if test="#rewards.deleted==0"> checked="checked"</s:if>>可用</option>
						<option value="1"<s:if test="#rewards.deleted==1"> checked="checked"</s:if>>已删除</option>
				</select>
   	   	 		</td>
   	   	 		</tr>
   	   	 	</table>
   	   	 </td>
   	   	 </tr> 
   	   	 <tr>
			<td colspan="2" align="center">					
				<input type="button" onclick="back()" value="返回"/>						
			</td>
		</tr> 	   	
		</tbody></table>
		</div>
	<script type="text/javascript">
	window.back=function(){
		window.location.href="admin/rewards!list.htm";
	};		
	</script>
	</body>
</html>
