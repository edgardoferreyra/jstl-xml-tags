<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL XML ForEach If Tag</title>
</head>
<body>
<c:import url="/Users.xml" var="XMLFile"/>
<x:parse xml="${XMLFile}" var="XMLdoc"/>

<!-- Para listar todos los nodos del xml file -->

<x:forEach select="$XMLdoc/users/user">

<br/>Name: <x:out select="name"/>
<br/>Gender: <x:out select="gender"/>
<br/>Age: <x:out select="age"/>
<br/>

</x:forEach>
****************************************************
<br/>
<br/>

<!-- Para filtrar un/os determinado/s nodo/s del xml file -->

<x:forEach select="$XMLdoc/users/user">

<x:if select="age > 20">

<br/>Name: <x:out select="name"/>
<br/>Gender: <x:out select="gender"/>
<br/>Age: <x:out select="age"/>
<br/>

</x:if>

</x:forEach>
****************************************************
<br/>
<br/>

<!-- Para mostrar los datos de forma tabular -->

<table border=1>
<x:forEach select="$XMLdoc/users/user">
<tr>
<td><x:out select="name"/></td>
<td><x:out select="gender"/></td>
<td><x:out select="age"/></td>
</tr>
</x:forEach>
</table>

</body>
</html>