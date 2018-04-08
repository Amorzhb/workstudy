<%
	if(session.getAttribute("student") == null){
		response.sendRedirect("../login.jsp");
		return ;
	}
 %>
