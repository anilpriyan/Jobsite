<%@ page language="java" contentType="text/xml; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
   String xmlData = "<jobs>" +
			"<job>" +
	"<title>Java Devoper 1</title>" +
	"<description>Java Develope 1</description>" +
	"<location>london</location>" +
"</job>" +
"<job>" +
	"<title>Java Developer</title>" +
	"<description>Java Developer 2</description>" +
	"<location>london</location>" +
"</job>" +
"</jobs>";
%>
<%=xmlData %>