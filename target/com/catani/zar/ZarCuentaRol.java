package com.catani.zar;

// Generated 20/08/2012 10:42:40 PM by Hibernate Tools 3.4.0.CR1

/**
 * ZarCuentaRol generated by hbm2java
 */
public class ZarCuentaRol implements java.io.Serializable {

	private Integer id;
	private String nombreRol;

	public ZarCuentaRol() {
	}

	public ZarCuentaRol(String nombreRol) {
		this.nombreRol = nombreRol;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombreRol() {
		return this.nombreRol;
	}

	public void setNombreRol(String nombreRol) {
		this.nombreRol = nombreRol;
	}

}
