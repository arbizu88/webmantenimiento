package com.mant.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="telefono")
public class Telefono {

	@Id
	@GeneratedValue
	private Integer idtelefono;

	private String modelo;

	private double precio;

	public Integer getIdtelefono() {
		return idtelefono;
	}

	public void setIdtelefono(Integer idtelefono) {
		this.idtelefono = idtelefono;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

}
