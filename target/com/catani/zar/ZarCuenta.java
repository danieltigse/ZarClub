package com.catani.zar;

// Generated 20/08/2012 10:42:40 PM by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * ZarCuenta generated by hbm2java
 */
public class ZarCuenta implements java.io.Serializable {

	private Integer id;
	private String email;
	private String password;
	private Date fechaDeRegistro;
	private int idRol;
	private int idDatosPersonales;

	public ZarCuenta() {
	}

	public ZarCuenta(String email, String password, Date fechaDeRegistro,
			int idRol, int idDatosPersonales) {
		this.email = email;
		this.password = password;
		this.fechaDeRegistro = fechaDeRegistro;
		this.idRol = idRol;
		this.idDatosPersonales = idDatosPersonales;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getFechaDeRegistro() {
		return this.fechaDeRegistro;
	}

	public void setFechaDeRegistro(Date fechaDeRegistro) {
		this.fechaDeRegistro = fechaDeRegistro;
	}

	public int getIdRol() {
		return this.idRol;
	}

	public void setIdRol(int idRol) {
		this.idRol = idRol;
	}

	public int getIdDatosPersonales() {
		return this.idDatosPersonales;
	}

	public void setIdDatosPersonales(int idDatosPersonales) {
		this.idDatosPersonales = idDatosPersonales;
	}

}
