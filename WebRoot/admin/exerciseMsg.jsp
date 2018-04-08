<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div class="main">
		<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="tableBorder">
    	<tbody>
     	<tr>
        	<th align="center" colspan="1" style="height: 23px">综合信息</th>
        </tr>
    	<tr bgcolor="#DEE5FA">
   	   	<td height="30px" align="center" class="txlrow">
   	   	 	<table width="100%" cellpadding="2" cellspacing="2">
				<tr>
					<td width="30%" bgcolor="#d6dff7" align="right" height="30px">学生姓名:</td>
					<td>						
						<select name="exercise.studentId" style="width:200px">
							<c:forEach var="item"  items="${studentlist}" step="1">
								<option value="${exercise.studentId }" selected="selected">
								${item.username }
								</option>
							</c:forEach>
						</select>
					</td>
				</tr>				
				<tr>
					<td width="30%" bgcolor="#d6dff7" align="right" height="30px">思想素质:</td>
					<td>
						<select name="exercise.thought" style="width:200px">
							<option value="1"<s:if test="#exercise.thought==1"> checked="checked"</s:if>>优秀</option>
							<option value="2"<s:if test="#exercise.thought==2"> checked="checked"</s:if>>良好</option>
							<option value="3"<s:if test="#exercise.thought==3"> checked="checked"</s:if>>差</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="30%" bgcolor="#d6dff7" align="right" height="30px">知识:</td>
					<td>
						<select name="exercise.knowledge" style="width:200px">
							<option value="1"<s:if test="#exercise.knowledge==1"> checked="checked"</s:if>>优秀</option>
							<option value="2"<s:if test="#exercise.knowledge==2"> checked="checked"</s:if>>良好</option>
							<option value="3"<s:if test="#exercise.knowledge==3"> checked="checked"</s:if>>差</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="30%" bgcolor="#d6dff7" align="right" height="30px">文化素质:</td>
					<td>
						<select name="exercise.culture" style="width:200px">
							<option value="1"<s:if test="#exercise.culture==1"> checked="checked"</s:if>>优秀</option>
							<option value="2"<s:if test="#exercise.culture==2"> checked="checked"</s:if>>良好</option>
							<option value="3"<s:if test="#exercise.culture==3"> checked="checked"</s:if>>差</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="30%" bgcolor="#d6dff7" align="right" height="30px">方法:</td>
					<td>
						<select name="exercise.method" style="width:200px">
							<option value="1"<s:if test="#exercise.method==1"> checked="checked"</s:if>>优秀</option>
							<option value="2"<s:if test="#exercise.method==2"> checked="checked"</s:if>>良好</option>
							<option value="3"<s:if test="#exercise.method==3"> checked="checked"</s:if>>差</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="30%" bgcolor="#d6dff7" align="right" height="30px">能力:</td>
					<td>
						<select name="exercise.ability" style="width:200px">
							<option value="1"<s:if test="#exercise.ability==1"> checked="checked"</s:if>>优秀</option>
							<option value="2"<s:if test="#exercise.ability==2"> checked="checked"</s:if>>良好</option>
							<option value="3"<s:if test="#exercise.ability==3"> checked="checked"</s:if>>差</option>
						</select>
					</td>
				</tr>						
				<tr>
					<td width="30%" bgcolor="#d6dff7" align="right" height="30px">学业:</td>
					<td>
						<select name="exercise.studies" style="width:200px">
							<option value="1"<s:if test="#exercise.studies==1"> checked="checked"</s:if>>优秀</option>
							<option value="2"<s:if test="#exercise.studies==2"> checked="checked"</s:if>>良好</option>
							<option value="3"<s:if test="#exercise.studies==3"> checked="checked"</s:if>>差</option>
						</select>
					</td>
				</tr>	
				<tr>
					<td width="30%" bgcolor="#d6dff7" align="right" height="30px">心理:</td>
					<td>
						<select name="exercise.mentally" style="width:200px">
							<option value="1"<s:if test="#exercise.mentally==1"> checked="checked"</s:if>>优秀</option>
							<option value="2"<s:if test="#exercise.mentally==2"> checked="checked"</s:if>>良好</option>
							<option value="3"<s:if test="#exercise.mentally==3"> checked="checked"</s:if>>差</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="30%" bgcolor="#d6dff7" align="right" height="30px">情感:</td>
					<td>
					<select name="exercise.feeling" style="width:200px">
						<option value="1"<s:if test="#exercise.feeling==1"> checked="checked"</s:if>>优秀</option>
						<option value="2"<s:if test="#exercise.feeling==2"> checked="checked"</s:if>>良好</option>
						<option value="3"<s:if test="#exercise.feeling==3"> checked="checked"</s:if>>差</option>
					</select>
					</td>
				</tr>
				<tr>
					<td width="30%" bgcolor="#d6dff7" align="right" height="30px">健康:</td>
					<td>
					<select name="exercise.healthy" style="width:200px">
						<option value="1"<s:if test="#exercise.healthy==1"> checked="checked"</s:if>>优秀</option>
						<option value="2"<s:if test="#exercise.healthy==2"> checked="checked"</s:if>>良好</option>
						<option value="3"<s:if test="#exercise.healthy==3"> checked="checked"</s:if>>差</option>
					</select>
					</td>
				</tr>
				<tr>
					<td width="30%" bgcolor="#d6dff7" align="right" height="30px">状态:</td>
					<td>
					<select name="exercise.deleted" style="width:200px">
						<option value="0"<s:if test="#exercise.deleted==0"> checked="checked"</s:if>>可用</option>
						<option value="1"<s:if test="#exercise.deleted==1"> checked="checked"</s:if>>已删除</option>
					</select>
					</td>
				</tr>			
				<tr>
					<td colspan="2" align="center">					
						<input type="button" onclick="back()" value="返回"/>						
					</td>
				</tr>
			</table>
   	   	 </td>
   	   	 </tr>  	   	
		</tbody>
		</table>
	</div>
	<script type="text/javascript">
	window.back=function(){
		window.location.href="admin/exercise!list.htm";
	};		
	</script>
	</body>
</html>
