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
        <th align=center colspan=8 style="height: 23px">职位列表</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="8" align="left" class=txlrow height="20px">
        </td>
      </tr>
   		<tr align="center" bgcolor="#799AE1">
      	<td height="20px" align="center" valign="middle" class="txlHeaderBackgroundAlternate">任务编号</td>
        <td align="center" class=txlHeaderBackgroundAlternate>标题</td>
        <td align="center" class=txlHeaderBackgroundAlternate>招聘人数</td>
        <td align="center" class=txlHeaderBackgroundAlternate>薪资待遇</td>
        <td align="center" class=txlHeaderBackgroundAlternate>发布人</td>
        <td align="center" class=txlHeaderBackgroundAlternate>发布时间</td>
        <td align="center" class=txlHeaderBackgroundAlternate>结束时间</td>
        <td align="center" class=txlHeaderBackgroundAlternate>操作</td>
      </tr>
      	<s:iterator value="list" var="t" id="t">
    	<tr bgcolor="#DEE5FA">
   	   	 <td height="30px" align="center" class="txlrow"><s:property value="#t.num"/> </td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.title"/></td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.count"/></td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.price"/>/<s:if test="#t.type==1">小时</s:if><s:elseif test="#t.type==2">天</s:elseif><s:else>月</s:else> </td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.employer.name"/></td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.starttime"/></td>
   	   	 <td align="center" class="txlrow"><s:property value="#t.enddate"/></td>
   	   	 <td align="center" class="txlrow">
   	   	 <a href="admin/task!taskMsg.htm?task.id=<s:property value="#t.id" />">查看</a>
   	   	 <a href="admin/task!deleteTask.htm?task.id=<s:property value="#t.id" />">删除</a>
   	   	 </td>
   	   	 </tr>
   	   	 </s:iterator>
   	   	 <tr bgcolor="#DEE5FA">
   	   	 <td  height="30px" align="right" class="txlrow" colspan="8">
   	   	 	共<s:property value="page.totalPage"/>页|第<s:property value="page.currentPage"/>页
   	   	 	&nbsp;&nbsp;&nbsp;
   	   	 	<a href="admin/task!taskList.htm?currentPage=<s:property value="1" />">首页</a>
   	   	 	<a href="admin/task!taskList.htm?currentPage=<s:property value="page.currentPage-1" />">上一页</a>
   	   	 	<a href="admin/task!taskList.htm?currentPage=<s:property value="page.currnetPage+1" />">下一页</a>
   	   	 	<a href="admin/task!taskList.htm?currentPage=<s:property value="page.totalPage" />">尾页</a>
   	   	 </td>
   	   	 </tr>
		</tbody></table>
	</body>
</html>
