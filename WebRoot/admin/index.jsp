<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>勤工助学后台管理</title>
</head>
<frameset rows="*" cols="180,*" frameborder="no" border="0" framespacing="0">
  <frame src="admin/left.jsp" name="leftFrame" scrolling="auto" noresize="noresize" id="leftFrame" title="leftFrame" />
  <frameset rows="50,*" frameborder="no" border="0" framespacing="0">
    <frame src="admin/head.jsp" name="topFrame" style="border-bottom: 1px solid black;" scrolling=no noresize="noresize" id="topFrame" title="topFrame" />
    <frame src="admin/main.html" name="mainFrame" id="mainFrame" title="mainFrame" />
  </frameset>
</frameset>
<noframes>
<body>
<p>你的浏览器不支持框架，请升级你的浏览器</p>
</body>
</noframes>
</html>
