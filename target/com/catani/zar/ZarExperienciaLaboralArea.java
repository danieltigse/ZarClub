package com.catani.zar;

// Generated 20/08/2012 10:42:40 PM by Hibernate Tools 3.4.0.CR1

/**
 * ZarExperienciaLaboralArea generated by hbm2java
 */
public class ZarExperienciaLaboralArea implements java.io.Serializable {

	private Integer id;
	private String nombreArea;

	public ZarExperienciaLaboralArea() {
	}

	public ZarExperienciaLaboralArea(String nombreArea) {
		this.nombreArea = nombreArea;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombreArea() {
		return this.nombreArea;
	}

	public void setNombreArea(String nombreArea) {
		this.nombreArea = nombreArea;
	}

}
