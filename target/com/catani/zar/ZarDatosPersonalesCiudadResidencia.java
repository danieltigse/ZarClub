package com.catani.zar;

// Generated 20/08/2012 10:42:40 PM by Hibernate Tools 3.4.0.CR1

/**
 * ZarDatosPersonalesCiudadResidencia generated by hbm2java
 */
public class ZarDatosPersonalesCiudadResidencia implements java.io.Serializable {

	private Integer id;
	private String nombreCiudad;

	public ZarDatosPersonalesCiudadResidencia() {
	}

	public ZarDatosPersonalesCiudadResidencia(String nombreCiudad) {
		this.nombreCiudad = nombreCiudad;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombreCiudad() {
		return this.nombreCiudad;
	}

	public void setNombreCiudad(String nombreCiudad) {
		this.nombreCiudad = nombreCiudad;
	}

}
