<%
	if(session.getAttribute("employer") == null){
		response.sendRedirect("../login.jsp");
		return ;
	}
 %>
