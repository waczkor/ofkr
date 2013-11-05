<%-- 
    Document   : logout
    Created on : 2013.11.04., 20:38:05
    Author     : Viki
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OFKR</title>
</head>
<body>    <%-- start web service invocation --%><hr/>
    <%
        java.lang.String username=request.getParameter("username");
    try {
	server.Server_Service service = new server.Server_Service();
	server.Server port = service.getServerPort();
	 // TODO initialize WS operation arguments here
	java.lang.String userID = username;
	// TODO process result here
	java.lang.String result = port.logout(userID);
	if(result.equals("success")){
            session.removeAttribute("username");
            session.invalidate();
            response.sendRedirect("../index.jsp");
        }
    } catch (Exception ex) {
	session.removeAttribute("username");
        session.invalidate();
        response.sendRedirect("../index.jsp");// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>    
</body>
</html>