<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Editar Telefono</title>
</head>
<body>
	<h1>Editar</h1>
	<p>Here you can edit the existing team.</p>
	<p>${message}</p>
	<form:form method="POST" commandName="telefono"
		action="/webmantenimiento/telefono/edit/${telefono.idtelefono}">
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
					<td><input type="submit" value="Edit" /></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</form:form>
	<p>
		<a href="/webmantenimiento/">Inicio</a>
	</p>
</body>
</html>