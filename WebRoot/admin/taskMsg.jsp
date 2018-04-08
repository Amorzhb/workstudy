<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
			<table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
    <tbody>
      <tr>
        <th align=center colspan=1 style="height: 23px">职位信息</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="1" align="left" class=txlrow height="30px">
        <input type="button" value="返回职位列表" onclick="javascript:location.href='task!taskList.htm'"/>
        </td>
      </tr>
   		<tr align="center" bgcolor="#799AE1">
      	<td height="20px" align="center" valign="middle" class="txlHeaderBackgroundAlternate">职位信息</td>
      </tr>
    	<tr bgcolor="#DEE5FA">
   	   	 <td height="30px" align="center" class="txlrow">
   	   	 	<table width="100%" cellpadding="2" cellspacing="2">
   	   	 		<tr><td align="left" height="40px">
   	   	 		<h2><s:property value="task.num"/>:<s:property value="task.title"/></h2>
   	   	 		</td></tr>
   	   	 		<tr>
   	   	 		<td align="left"><s:property value="task.content" escape="false"/></td>
   	   	 		</tr>
   	   	 		<tr>
   	   	 		<td align="left" height="50" valign="bottom">
   	   	 		<b>职位信息:</b>招聘人数:<s:property value="task.count"/>&nbsp;&nbsp;&nbsp;&nbsp;
   	   	 		薪资待遇:<s:property value="task.price"/>/<s:if test="task.type==1">小时</s:if><s:elseif test="task.type==2">天</s:elseif><s:else>月</s:else>
   	   	 		&nbsp;&nbsp;&nbsp;&nbsp;发布时间:<s:property value="task.starttime" />&nbsp;&nbsp;&nbsp;&nbsp;
   	   	 		结束时间:<s:property value="task.enddate"/>
   	   	 		</td>
   	   	 		</tr>
   	   	 	</table>
   	   	 </td>
   	   	 </tr>
   	   	 
   	   	 <tr align="center" bgcolor="#799AE1">
      	<td height="20px" align="center" valign="middle" class="txlHeaderBackgroundAlternate">公司信息</td>
      </tr>
    	<tr bgcolor="#DEE5FA">
   	   	 <td height="30px" align="center" class="txlrow">
   	   	 	<table width="100%" cellpadding="2" cellspacing="2">
   	   	 	<tr><td width="100px" height="30" align="left">公司名称:</td><td align="left"><s:property value="task.employer.name"/></td></tr>
   	   	 	<tr><td height="30" align="left">公司地址:</td><td align="left"><s:property value="task.employer.address"/></td></tr>
   	   	 	<tr><td height="30" align="left">公司电话:</td><td align="left"><s:property value="task.employer.tel"/></td></tr>
   	   	 	<tr><td height="30" align="left">公司行业:</td><td align="left"><s:property value="task.employer.industy"/></td></tr>
   	   	 	<tr><td height="30" align="left">公司规模:</td><td align="left"><s:property value="task.employer.scope"/>人</td></tr>
   	   	 	<tr><td height="30" align="left">公司简介:</td><td align="left"><s:property value="task.employer.introduce"/></td></tr>
   	   	 	</table>
   	   	 </td>
   	   	 </tr>
   	   	 
   	   	  <tr align="center" bgcolor="#799AE1">
      	<td height="20px" align="center" valign="middle" class="txlHeaderBackgroundAlternate">申请记录</td>
      </tr>
    	<tr bgcolor="#DEE5FA">
   	   	 <td height="30px" align="center" class="txlrow">
   	   	 <s:iterator value="olist" var="o">
   	   	 	<table width="100%" cellpadding="2" cellspacing="2">
   	   	 			<tr><td height="30px" align="left" style="border-bottom: 1px dotted gray">
   	   	 			<h4>申请单号:<s:property value="#o.num"/></h4></td></tr>
 	   	 			<tr><td align="left" height="30">
 	   	 				申请者信息:<br/><br/>
 	   	 				&nbsp;&nbsp;&nbsp;&nbsp;姓名:<s:property value="#o.student.name"/>
 	   	 				&nbsp;&nbsp;&nbsp;&nbsp;性别:<s:property value="#o.student.sex"/>
 	   	 				&nbsp;&nbsp;&nbsp;&nbsp;年龄:<s:property value="#o.student.age"/>
 	   	 				&nbsp;&nbsp;&nbsp;&nbsp;电话:<s:property value="#o.student.tel"/><br/>
 	   	 				&nbsp;&nbsp;&nbsp;&nbsp;个人简介:<s:property value="#o.student.introduce"/>
 	   	 			</td></tr>
 	   	 			<tr><td align="left" height="30"><b>评论:</b><s:property value="#o.comment"/></td></tr>
 	   	 			<tr><td align="right" height="30" style="border-bottom: 2px solid black;"><b>状态:</b>
 	   	 			<s:if test="#o.state==1">申请</s:if><s:elseif test="#o.state==2">录用</s:elseif>
 	   	 			<s:elseif test="#o.state==3">解雇</s:elseif><s:elseif test="#o.state==4">忽略</s:elseif>
					&nbsp;&nbsp;&nbsp;<b>操作:</b> 	
					<a href="admin/order!delete.htm?order.id=<s:property value="#o.id" />&order.task.id=<s:property value="#o.task.id" />">删除</a>
					 </td></tr>
   	   	 	</table>
   	   </s:iterator>
   	   	 </td>
   	   	 </tr>
		</tbody></table>
	</body>
</html>
