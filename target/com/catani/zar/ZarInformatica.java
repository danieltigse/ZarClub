package com.catani.zar;

// Generated 20/08/2012 10:42:40 PM by Hibernate Tools 3.4.0.CR1

/**
 * ZarInformatica generated by hbm2java
 */
public class ZarInformatica implements java.io.Serializable {

	private Integer id;
	private String nivel;
	private int idConocimientoInformatico;
	private int idCuenta;

	public ZarInformatica() {
	}

	public ZarInformatica(String nivel, int idConocimientoInformatico,
			int idCuenta) {
		this.nivel = nivel;
		this.idConocimientoInformatico = idConocimientoInformatico;
		this.idCuenta = idCuenta;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNivel() {
		return this.nivel;
	}

	public void setNivel(String nivel) {
		this.nivel = nivel;
	}

	public int getIdConocimientoInformatico() {
		return this.idConocimientoInformatico;
	}

	public void setIdConocimientoInformatico(int idConocimientoInformatico) {
		this.idConocimientoInformatico = idConocimientoInformatico;
	}

	public int getIdCuenta() {
		return this.idCuenta;
	}

	public void setIdCuenta(int idCuenta) {
		this.idCuenta = idCuenta;
	}

}