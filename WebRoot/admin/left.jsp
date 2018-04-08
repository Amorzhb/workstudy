<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>菜单</TITLE>
		<base href="<%=basePath%>">
		<STYLE type=text/css>
BODY {
	BACKGROUND: #799ae1;
	MARGIN: 0px;
	FONT: 9pt 宋体
}

TABLE {
	BORDER-RIGHT: 0px;
	BORDER-TOP: 0px;
	BORDER-LEFT: 0px;
	BORDER-BOTTOM: 0px
}

TD {
	FONT: 12px 宋体
}

IMG {
	BORDER-RIGHT: 0px;
	BORDER-TOP: 0px;
	VERTICAL-ALIGN: bottom;
	BORDER-LEFT: 0px;
	BORDER-BOTTOM: 0px
}

A {
	FONT: 12px 宋体;
	COLOR: #000000;
	TEXT-DECORATION: none
}

A:hover {
	COLOR: #428eff;
	TEXT-DECORATION: underline
}

.sec_menu {
	BORDER-RIGHT: white 1px solid;
	BACKGROUND: #d6dff7;
	OVERFLOW: hidden;
	BORDER-LEFT: white 1px solid;
	BORDER-BOTTOM: white 1px solid
}

.menu_title {
	
}

.menu_title SPAN {
	FONT-WEIGHT: bold;
	LEFT: 7px;
	COLOR: #215dc6;
	POSITION: relative;
	TOP: 2px
}

.menu_title2 {
	
}

.menu_title2 SPAN {
	FONT-WEIGHT: bold;
	LEFT: 8px;
	COLOR: #428eff;
	POSITION: relative;
	TOP: 2px
}
</STYLE>
</SCRIPT>

		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<META content="MSHTML 6.00.2900.2180" name=GENERATOR>
	</HEAD>
	<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
		<TABLE cellSpacing=0 cellPadding=0 width="100%" align=left border=0>
			<TBODY>
				<TR>
					<TD vAlign=top bgColor=#799ae1>
						<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
							<TBODY>
								<TR>
									<TD vAlign=bottom height=42>
										<IMG height=38 src="left.files/title.gif" width=158>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
							<TBODY>
								<TR>
									<TD class=menu_title
										onMouseOver="this.className='menu_title2';"
										onmouseout="this.className='menu_title';" background=""
										height=25>
									</TD>
								</TR>
								<TR>
									<TD class=menu_title
										onMouseOver="this.className='menu_title2';"
										onmouseout="this.className='menu_title';" background=""
										height=10>
										&nbsp;
									</TD>
								</TR>
							</TBODY>
						</TABLE>


						<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
							<TBODY>
								<TR>
									<TD class=menu_title id=menuTitle1
										onmouseover="this.className='menu_title2';"
										onmouseout="this.className='menu_title';"
										background=left.files/admin_left_1.gif height=25>
										<span><B>功能菜单</B>
										</span>
									</TD>
								</TR>
								<TR>
									<TD id=submenu0>
										<DIV class=sec_menu style="WIDTH: 158px">
											<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
												<TBODY>
													<TR>
														<TD height=20>
															<A href="register.jsp" target=mainFrame>添加角色</A>
														</TD>
													</TR>
													<TR>
														<TD height=20>
															<A href="admin/student!list.htm" target=mainFrame>学生信息</A>
														</TD>
													</TR>
													<TR>
														<TD height=20>
															<A href="admin/employer!list.htm" target=mainFrame>教师信息</A>
														</TD>
													</TR>
													<TR>
														<TD height=20>
															<A href="admin/rewards!list.htm?type=in(1,2)" target=mainFrame>奖惩管理</A>
														</TD>
													</TR>													
													<TR>
														<TD height=20>
															<A href="admin/support!list.htm" target=mainFrame>资助管理</A>
														</TD>
													</TR>
													<TR>
														<TD height=20>
															<A href="admin/exercise!list.htm" target=mainFrame>综合素质管理</A>
														</TD>
													</TR>
													<TR>
														<TD height=20>
															<A href="admin/task!taskList.htm" target=mainFrame>职位管理</A>
														</TD>
													</TR>
													<TR>
														<TD height=20>
															<A href="admin/password.jsp" target=mainFrame>修改密码</A>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
										<DIV style="WIDTH: 158px">
											<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
												<TBODY>
													<TR>
														<TD height=10></TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
									</TD>
								</TR>
							</TBODY>
						</TABLE></TD></TR></TBODY></TABLE>
	</BODY>
</HTML>
