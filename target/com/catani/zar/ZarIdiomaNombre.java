package com.catani.zar;

// Generated 20/08/2012 10:42:40 PM by Hibernate Tools 3.4.0.CR1

/**
 * ZarIdiomaNombre generated by hbm2java
 */
public class ZarIdiomaNombre implements java.io.Serializable {

	private Integer id;
	private String nombreIdioma;

	public ZarIdiomaNombre() {
	}

	public ZarIdiomaNombre(String nombreIdioma) {
		this.nombreIdioma = nombreIdioma;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombreIdioma() {
		return this.nombreIdioma;
	}

	public void setNombreIdioma(String nombreIdioma) {
		this.nombreIdioma = nombreIdioma;
	}

}