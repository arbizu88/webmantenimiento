<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Agregar Telefono</title>
</head>
<body>
	<h1>Agregar Telefono</h1>
	<p>Puede agregar nuevo telefono.</p>
	<form:form method="POST" commandName="telefono" action="/telefono/add">
		<table>
			<tbody>
				<tr>
					<td>Modelo:</td>
					<td><form:input path="modelo" /></td>
				</tr>
				<tr>
					<td>Precio:</td>
					<td><form:input path="precio" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Agregar" /></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</form:form>

	<p>
		<a href="/webmantenimiento/">Home page</a>
	</p>
</body>
</html>