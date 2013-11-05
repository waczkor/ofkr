<%-- 
    Document   : statisztika
    Created on : 2013.11.04., 20:39:18
    Author     : Viki
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../../css/style.css" type="text/css"></link>
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
	    <ul class="menu">
	      <li>
	        <a href="adminindex.jsp">Index</a></li>   
	      <li>
	        <a href="#">Projektek hozzáadása</a></li>  
	      <li> 
	        <a href="#">Feladat hozzáadása</a></li>  
	      <li> 
	        <a href="statisztika.jsp">Statisztikák</a></li>   
	    </ul>    
	</div>
	<div id=tartalom> 
		<form method="post" >
			<select name="sel">
			<option value="2012">Projekt 2012</option>
			<option value="2013">Projekt 2013</option>
			<option value="2014">Projekt 2014</option>
			</select>
			<br>
			<input type="Submit" value="Submit">
		</form>
	</div>
	<div id=jobbsav>  <a href="../logout.jsp">Kilépés</a>  </div>
</div>
<div id="lent"> 2013/2014 semester </div>
</body>
</html>