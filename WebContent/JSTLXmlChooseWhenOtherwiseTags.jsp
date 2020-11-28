<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL XML choose when and otherwise tags.</title>
</head>
<body>
<c:import url="/Users.xml" var="XMLFile"/>
<x:parse xml="${XMLFile}" var="XMLdoc"/>

<table border=1>
<x:forEach select="$XMLdoc/users/user">
<tr>
<x:choose>
	<x:when select="gender='Female'">

<td><i><b><x:out select="name"/></b></i></td>
<td><i><b><x:out select="gender"/></b></i></td>
<td><i><b><x:out select="age"/></b></i></td>

</x:when>
<x:otherwise>
<td><x:out select="name"/></td>
<td><x:out select="gender"/></td>
<td><x:out select="age"/></td>
</x:otherwise>
</x:choose>
</tr>
</x:forEach>
</table>


</body>
</html>