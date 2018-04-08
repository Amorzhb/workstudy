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
		<title>学生信息</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<link rel="stylesheet" href="inc/css.css" type="text/css" />
		<script type="text/javascript" src="DatePicker/WdatePicker.js"></script>
	</head>
	<body>
			<table width="100%" border=0 align=center cellpadding=2 cellspacing=1 class=tableBorder>
    <tbody>
      <tr>
        <th align=center colspan=8 style="height: 23px">学生信息</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="8" align="left" class=txlrow height="20px">
        </td>
        </tr>
      <tr>
      	 <td align="center" class=txlHeaderBackgroundAlternate>用户名</td>
     	 <td height="20px" align="center" valign="middle" class="txlHeaderBackgroundAlternate">姓名</td>
       	 <td align="center" class=txlHeaderBackgroundAlternate>性别</td>
       	 <td align="center" class=txlHeaderBackgroundAlternate>年龄</td>
       	 <td align="center" class=txlHeaderBackgroundAlternate>电话</td>
       	 <td align="center" class=txlHeaderBackgroundAlternate>介绍</td>
       	 <td align="center" class=txlHeaderBackgroundAlternate>状态</td>
       	 <td align="center" class=txlHeaderBackgroundAlternate>操作</td>
       </tr>	
       
       <s:iterator value="list" var="s">
   	   		 	<tr bgcolor="#DEE5FA">
   	   	 <td height="30px" align="center" class="txlrow"><s:property value="#s.username"/> </td>
   	   	 <td height="40px" align="center" class="txlrow"><s:property value="#s.name"/></td>
   	   	 <td align="center" class="txlrow"><s:property value="#s.sex"/></td>
   	   	 <td align="center" class="txlrow"><s:property value="#s.age"/></td>
   	   	 <td align="center" class="txlrow"><s:property value="#s.tel"/></td>
   	   	 <td width="20%" align="center" class="txlrow"><s:property value="#s.introduce"/></td>
   	   	 <td align="center" class="txlrow"><s:if test="#s.deleted==1">已删除</s:if><s:else>可用</s:else> </td>
   	   	 <td align="center" class="txlrow">
   	   	 	<a href="admin/student!delete.htm?student.id=<s:property value="#s.id" />">删除</a>
   	   	 </td>
   	   	 </tr>
   	   		</s:iterator>
   	   		 
	   	  <tr bgcolor="#DEE5FA">
   	    <td align="right" class="txlrow" colspan="8">
   	    	<table><tr><td>
   	    		<a href="admin/student!list.htm?currentPage=1">首页</a>&nbsp;&nbsp;
   	    		<a href="admin/student!list.htm?currentPage=<s:property value="page.currentPage-1" />">上一页</a>&nbsp;&nbsp;
   	    		<a href="admin/student!list.htm?currentPage=<s:property value="page.currentPage+1" />">下一页</a>&nbsp;&nbsp;
   	    		<a href="admin/student!list.htm?currentPage=<s:property value="page.totalPage" />">尾页</a>&nbsp;&nbsp;
   	    	</td>
   	    	</tr></table>
   	    </td>
   	    </tr>
		</tbody></table>
	</body>
</html>
