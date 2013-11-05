<%-- 
    Document   : index
    Created on : 2013.11.04., 20:34:38
    Author     : Viki
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./css/style.css" type="text/css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OFKR</title>
</head>

<body>
<div id=fent>
	<div id=fejlec>
	<div id=felirat>
	<%-- This is a JSP Comment before JSP Scriplet --%>
	<%
		//Prints out to HTML page
		out.println("Online Feladat Koveto Rendszer");
	%>
	</div>
	</div>
</div>
<div id=kozep>
	<div id=balsav>
	     
	</div>
	<div id="tartalom" align="center">
                <% java.lang.String fail=request.getParameter("fail");
                if(fail != null){
                %> 
                     <script type="text/javascript">
                        alert("Hibás felhasználónév vagy jelszó!");
                     </script>     
                <%}%>
		<form action="./jsp/usercheck.jsp" method="post">
			<table border = "0" align="center">
				<tr align="center" valign="top">
					<td>User Name:</td>
					<td><input type="text" name ="username" /></td>
				</tr>
				<tr align="center" valign="top">
					<td>Password:</td>
					<td><input type="password" name ="password" /></td>
				</tr>
				<tr align="center" valign="top">
					<td></td>
					<td><input type="submit" name="submit" value="submit"/></td>
				</tr>
			</table>
		</form>
	</div>
	<div id=jobbsav> 
	
	</div>
</div>
<div id="lent"> 2013/2014 semester </div>
</body>
</html>
