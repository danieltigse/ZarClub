package com.catani.zar;

// Generated 20/08/2012 10:42:40 PM by Hibernate Tools 3.4.0.CR1

/**
 * ZarDatosPersonalesEstadoCivil generated by hbm2java
 */
public class ZarDatosPersonalesEstadoCivil implements java.io.Serializable {

	private Integer id;
	private String estadoCivil;

	public ZarDatosPersonalesEstadoCivil() {
	}

	public ZarDatosPersonalesEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEstadoCivil() {
		return this.estadoCivil;
	}

	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

}
