<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	<div style="font-family: Verdana">
		<h2>Lista de telefonos</h2>
	</div>
	<div align="center">
		<h3 style="font-family: Verdana">Mantenimiento</h3>
	</div>
	<div align="center"  style= "border: 0px solid #d0d0d0; border-radius: 8px;">
		<table align="center" border="1px" cellpadding="0" cellspacing="0">
			<thead>
				<tr bgcolor="#0F9DDA" >
					<th width="10%">ID</th>
					<th width="15%">Modelo</th>
					<th width="10%">Precio</th>
					<th width="10%">Accion</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="telefono" items="${telefonos}">
					<tr>
						<td>${telefono.idtelefono}</td>
						<td>${telefono.modelo}</td>
						<td>${telefono.precio}</td>
						<td align="center"><a
							href="/webmantenimiento/telefono/edit/${telefono.idtelefono}">Edit</a>
							<a
							href="/webmantenimiento/telefono/delete/${telefono.idtelefono}">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div style="font-family: Verdana">
		<p>
			<a href="/webmantenimiento/">Inicio</a>
		</p>
	</div>
</body>
</html>