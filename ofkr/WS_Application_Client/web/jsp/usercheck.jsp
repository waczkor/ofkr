<%-- 
    Document   : usercheck
    Created on : 2013.11.04., 20:39:42
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
<body>
 <%--
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String login="login";
        
        
        if((username.equals("admin") && password.equals("admin1")))
            {
            session.setAttribute("username",username);
            session.setAttribute("login",login);
            response.sendRedirect("./private/adminindex.jsp");
            }
        else
            response.sendRedirect("index.jsp");
 --%>
     <%-- start web service invocation --%><hr/>
    <%
        java.lang.String username=request.getParameter("username");
        java.lang.String pword=request.getParameter("password");
        java.lang.String sID=request.getParameter("jsessionId");
        out.println(username);
    try {
	server.Server_Service service = new server.Server_Service();
	server.Server port = service.getServerPort();
	 // TODO initialize WS operation arguments here
        
        
	java.lang.String userID = username;
	java.lang.String password = pword;
	java.lang.String sessionID = sID;
	// TODO process result here
	java.lang.String result = port.login(userID, password, sessionID);
	out.println("Result = "+result);
        if(result.equals("success")){
            session.setAttribute("username", request.getParameter("username"));
            response.sendRedirect("./private/managerindex.jsp");
        }
        else{
            session.removeAttribute("username");
            session.invalidate();
            response.sendRedirect("../index.jsp?fail=fail");
          
        }
    } catch (Exception ex) {
	session.removeAttribute("username");
        session.invalidate();
        response.sendRedirect("../index.jsp"); // TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

 
</body>
</html>