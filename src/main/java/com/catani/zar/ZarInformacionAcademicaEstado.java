package com.catani.zar;

import java.util.List;

// Generated 18/08/2012 10:09:19 PM by Hibernate Tools 3.4.0.CR1

/**
 * ZarInformacionAcademicaEstado generated by hbm2java
 */
public class ZarInformacionAcademicaEstado implements java.io.Serializable {

	private Integer id;
	private String nombreEstado;

	public ZarInformacionAcademicaEstado() {
	}

	public ZarInformacionAcademicaEstado(String nombreEstado) {
		this.nombreEstado = nombreEstado;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombreEstado() {
		return this.nombreEstado;
	}

	public void setNombreEstado(String nombreEstado) {
		this.nombreEstado = nombreEstado;
	}
	
	public static int obtenerId(String estado,List lista){
		
		for(int k=0; k<lista.size(); k++)
        {
			ZarInformacionAcademicaEstado zdpcr=(ZarInformacionAcademicaEstado)lista.get(k);
			if(estado.equals(zdpcr.getNombreEstado()))
				return zdpcr.getId();
        }
		return 0;
	}
	
	public static String obtenerNombre(int id,List lista){
		
		for(int k=0; k<lista.size(); k++)
        {
			ZarInformacionAcademicaEstado zdpcr=(ZarInformacionAcademicaEstado)lista.get(k);
			if(id==zdpcr.getId())
				return zdpcr.getNombreEstado();
        }
		return " ";
	}
	
	public static String llenarXml(List lista) {
		String xml="";
        xml=xml+"<datos>";
        for(int i=0; i<lista.size(); i++)
        {
        	ZarInformacionAcademicaEstado dc=(ZarInformacionAcademicaEstado)lista.get(i);            
            xml=xml+ "<nombre>"+dc.getNombreEstado()+"</nombre>";
        }
        xml=xml+"</datos>";
        return xml;
	}

}
