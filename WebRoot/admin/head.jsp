<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD><base href="<%=basePath%>">
		<link rel="stylesheet" href="inc/css.css" type="text/css">
		<SCRIPT src="js/Clock.js" type=text/javascript></SCRIPT>
		<META http-equiv=Content-Type content="text/html; charset=gb2312"></HEAD>
		<BODY bgColor=#d6dff7 leftMargin="0" topMargin="0" marginwidth="0"
			marginheight="0">
			<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TBODY>
					<TR>
						<TD class=txlHeaderBackgroundAlternate id=TableTitleLink
							vAlign=center width="43%" height=23>
							→ 勤工助学后台管理中心
						</TD>
						<TD class=txlHeaderBackgroundAlternate id=TableTitleLink
							vAlign=center width="21%">
							&nbsp;
						</TD>
						<TD class=txlHeaderBackgroundAlternate id=TableTitleLink
							vAlign=center align=right width="36%">
							&nbsp;
						</TD>
					</TR>
					<tr><td height="25px" colspan="3">
					您好:管理员&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
						<SPAN style="font-weight: bold;" id=clock></SPAN>
					</td></tr>
				</TBODY>
			</TABLE>
		</BODY>
		
		<SCRIPT type=text/javascript>
	var clock = new Clock();
	clock.display(document.getElementById("clock"));
	</SCRIPT>
</HTML>
