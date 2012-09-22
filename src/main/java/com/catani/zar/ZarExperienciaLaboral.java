package com.catani.zar;

// Generated 18/08/2012 10:09:19 PM by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * ZarExperienciaLaboral generated by hbm2java
 */
public class ZarExperienciaLaboral implements java.io.Serializable {

	private Integer id;
	private String nombreEmpresa;
	private String cargo;
	private Date fechaInicio;
	private Date fechaSalida;
	private String descripcionFuncion;
	private String logros;
	private int idArea;
	private int idSector;
	private int idCuenta;

	public ZarExperienciaLaboral() {
	}

	public ZarExperienciaLaboral(String nombreEmpresa, String cargo,
			Date fechaInicio, int idArea, int idSector, int idCuenta) {
		this.nombreEmpresa = nombreEmpresa;
		this.cargo = cargo;
		this.fechaInicio = fechaInicio;
		this.idArea = idArea;
		this.idSector = idSector;
		this.idCuenta = idCuenta;
	}

	public ZarExperienciaLaboral(String nombreEmpresa, String cargo,
			Date fechaInicio, Date fechaSalida, String descripcionFuncion,
			String logros, int idArea, int idSector, int idCuenta) {
		this.nombreEmpresa = nombreEmpresa;
		this.cargo = cargo;
		this.fechaInicio = fechaInicio;
		this.fechaSalida = fechaSalida;
		this.descripcionFuncion = descripcionFuncion;
		this.logros = logros;
		this.idArea = idArea;
		this.idSector = idSector;
		this.idCuenta = idCuenta;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombreEmpresa() {
		return this.nombreEmpresa;
	}

	public void setNombreEmpresa(String nombreEmpresa) {
		this.nombreEmpresa = nombreEmpresa;
	}

	public String getCargo() {
		return this.cargo;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
	}

	public Date getFechaInicio() {
		return this.fechaInicio;
	}

	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	public Date getFechaSalida() {
		return this.fechaSalida;
	}

	public void setFechaSalida(Date fechaSalida) {
		this.fechaSalida = fechaSalida;
	}

	public String getDescripcionFuncion() {
		return this.descripcionFuncion;
	}

	public void setDescripcionFuncion(String descripcionFuncion) {
		this.descripcionFuncion = descripcionFuncion;
	}

	public String getLogros() {
		return this.logros;
	}

	public void setLogros(String logros) {
		this.logros = logros;
	}

	public int getIdArea() {
		return this.idArea;
	}

	public void setIdArea(int idArea) {
		this.idArea = idArea;
	}

	public int getIdSector() {
		return this.idSector;
	}

	public void setIdSector(int idSector) {
		this.idSector = idSector;
	}

	public int getIdCuenta() {
		return this.idCuenta;
	}

	public void setIdCuenta(int idCuenta) {
		this.idCuenta = idCuenta;
	}

}
