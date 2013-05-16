<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Listas de telefonos</title>
</head>
<body>
<h1>Lista de telefonos</h1>
<p>Aqui se puede visualizar el mantenimiento.</p>
<table border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="10%">idtelefono</th><th width="15%">modelo</th><th width="10%">precio</th><th width="10%">accion</th>
</tr>
</thead>
<tbody>
<c:forEach var="telefono" items="${telefonos}">
<tr>
	<td>${telefono.idtelefono}</td>
	<td>${telefono.modelo}</td>
	<td>${telefono.precio}</td>
	<td>
	<a href="/webmantenimiento/telefono/edit/${telefono.idtelefono}">Edit</a><br/>
	<a href="/webmantenimiento/telefono/delete/${telefono.idtelefono}">Delete</a><br/>
	</td>
</tr>
</c:forEach>
</tbody>
</table>

<p><a href="/webmantenimiento/">Inicio</a></p>

</body>
</html>