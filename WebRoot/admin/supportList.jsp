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
		<title>资助信息</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<link rel="stylesheet" href="inc/css.css" type="text/css" />
		<script type="text/javascript" src="DatePicker/WdatePicker.js"></script>
	</head>
	<body>
			<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="tableBorder">
    <tbody>
      <tr>
        <th align="center" colspan="8" style="height: 23px">资助信息</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="8" align="left" class="txlrow" height="20px">
        	<input type="button" id="add" onclick="add()" value="添加"></input>
        </td>
        </tr>
      <tr>
     	 <td height="20px" align="center" valign="middle" class="txlHeaderBackgroundAlternate">资助标准</td>
       	 <td align="center" class="txlHeaderBackgroundAlternate">资助人数</td>
       	 <td align="center" class="txlHeaderBackgroundAlternate">资助信息</td>
       	 <td align="center" class="txlHeaderBackgroundAlternate">学生</td>
      	 <td align="center" class="txlHeaderBackgroundAlternate">资助类型</td>
      	 <td align="center" class="txlHeaderBackgroundAlternate">是否可用</td>
      	 <td align="center" class="txlHeaderBackgroundAlternate">审批状态</td>
     	 <td align="center" class="txlHeaderBackgroundAlternate">操作</td>
       </tr>	
       
       <s:iterator value="list" var="s">
   	   		 	<tr bgcolor="#DEE5FA">
   	   	 <td height="30px" align="center" class="txlrow"><s:property value="#s.standard"/> </td>
   	   	 <td height="40px" align="center" class="txlrow"><s:property value="#s.number"/></td>
   	   	 <td align="center" class="txlrow"><s:property value="#s.qualifications"/></td>
   	   	 <td width="20%" align="center" class="txlrow"><s:property value="#s.studentName"/></td>   	   	
   	   	 <td width="20%" align="center" class="txlrow"><s:property value="#s.type"/></td>
   	   	 <td align="center" class="txlrow"><s:if test="#s.deleted==1">已删除</s:if><s:else>可用</s:else> </td>
   	   	 <td align="center" class="txlrow"><s:if test="#s.apply==1">审批通过</s:if><s:else>待审批</s:else> </td>
   	   	<td align="center" class="txlrow">
	   	   	 <a href="admin/support!supportMsg.htm?support.id=<s:property value="#t.id" />">查看</a>
	   	   	 <a href="admin/support!updateSupport.htm?support.id=<s:property value="#t.id" />">修改</a>
	   	   	 <a href="admin/support!supportByEmp.htm?action=delete&support.id=<s:property value="#t.id" />" onclick="javascript:confirm('确定删除该条信息?')">删除</a>
   	   	 </td>
   	   	 </tr>
   	   	</s:iterator>
   	   		 
	   	  <tr bgcolor="#DEE5FA">
   	    <td align="right" class="txlrow" colspan="8">
   	    	<table><tr><td>
   	    		<a href="admin/support!list.htm?currentPage=1">首页</a>&nbsp;&nbsp;
   	    		<a href="admin/support!list.htm?currentPage=<s:property value="page.currentPage-1" />">上一页</a>&nbsp;&nbsp;
   	    		<a href="admin/support!list.htm?currentPage=<s:property value="page.currentPage+1" />">下一页</a>&nbsp;&nbsp;
   	    		<a href="admin/support!list.htm?currentPage=<s:property value="page.totalPage" />">尾页</a>&nbsp;&nbsp;
   	    	</td>
   	    	</tr></table>
   	    </td>
   	    </tr>
		</tbody></table>
	<script type="text/javascript">
		window.add = function(){
			window.location.href="admin/support!addSupport.htm";
		};
	</script>
	</body>
</html>
