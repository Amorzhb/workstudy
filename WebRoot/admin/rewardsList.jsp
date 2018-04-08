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
		<title>学生信息</title>
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
        <th align="center" colspan="8" style="height: 23px">奖惩信息</th>
      </tr>
      <tr bgcolor="#DEE5FA">
        <td colspan="8" align="left" class="txlrow" height="20px">
        <input type="button" id="add" value="添加" onclick="add()"></input>
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
	   	   	 <a href="admin/rewards!rewardsMsg.htm?rewards.id=<s:property value="#t.id" />">查看</a>
	   	   	 <a href="admin/rewards!updateRewards.htm?rewards.id=<s:property value="#t.id" />">修改</a>
	   	   	 <a href="admin/rewards!rewardsByEmp.htm?action=delete&rewards.id=<s:property value="#t.id" />" onclick="deletes()">删除</a>
   	   	 </td>
   	  </tr>
   	  </s:iterator>
   	   		 
	   	  <tr bgcolor="#DEE5FA">
   	    <td align="right" class="txlrow" colspan="6">
   	    <table><tr><td>
   	    		<a href="admin/rewards!list.htm?type=1&currentPage=1">首页</a>&nbsp;&nbsp;
   	    		<a href="admin/rewards!list.htm?type=1&currentPage=<s:property value="page.currentPage-1" />">上一页</a>&nbsp;&nbsp;
   	    		<a href="admin/rewards!list.htm?type=1&currentPage=<s:property value="page.currentPage+1" />">下一页</a>&nbsp;&nbsp;
   	    		<a href="admin/rewards!list.htm?type=1&currentPage=<s:property value="page.totalPage" />">尾页</a>&nbsp;&nbsp;
   	    	</td>
   	    	</tr>
   	    </table>
   	    </td>
   	    </tr>
		</tbody></table>
		<script type="text/javascript">
		window.add = function(){
			window.location.href="admin/rewards!addRewards.htm";
		};
		window.deletes = function(){
			confirm('确定删除该条信息?');
			window.location.href="admin/rewards!list.htm?type=in(1,2)";
		};
	</script>
	</body>
</html>
