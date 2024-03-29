package com.catani.zar;

// Generated 20/08/2012 10:42:40 PM by Hibernate Tools 3.4.0.CR1

/**
 * ZarInformacionAcademicaInstitucion generated by hbm2java
 */
public class ZarInformacionAcademicaInstitucion implements java.io.Serializable {

	private Integer id;
	private String provincia;
	private String ciudad;
	private String nombreInstitucion;
	private String categoria;
	private String siglas;

	public ZarInformacionAcademicaInstitucion() {
	}

	public ZarInformacionAcademicaInstitucion(String nombreInstitucion) {
		this.nombreInstitucion = nombreInstitucion;
	}

	public ZarInformacionAcademicaInstitucion(String provincia, String ciudad,
			String nombreInstitucion, String categoria, String siglas) {
		this.provincia = provincia;
		this.ciudad = ciudad;
		this.nombreInstitucion = nombreInstitucion;
		this.categoria = categoria;
		this.siglas = siglas;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProvincia() {
		return this.provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public String getCiudad() {
		return this.ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getNombreInstitucion() {
		return this.nombreInstitucion;
	}

	public void setNombreInstitucion(String nombreInstitucion) {
		this.nombreInstitucion = nombreInstitucion;
	}

	public String getCategoria() {
		return this.categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getSiglas() {
		return this.siglas;
	}

	public void setSiglas(String siglas) {
		this.siglas = siglas;
	}

}
