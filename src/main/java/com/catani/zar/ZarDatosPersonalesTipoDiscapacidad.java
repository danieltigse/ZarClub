package com.catani.zar;

import java.util.List;

// Generated 18/08/2012 10:09:19 PM by Hibernate Tools 3.4.0.CR1

/**
 * ZarDatosPersonalesTipoDiscapacidad generated by hbm2java
 */
public class ZarDatosPersonalesTipoDiscapacidad implements java.io.Serializable {

	private Integer id;
	private String tipo;

	public ZarDatosPersonalesTipoDiscapacidad() {
	}

	public ZarDatosPersonalesTipoDiscapacidad(String tipo) {
		this.tipo = tipo;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	public static int obtenerId(String tdiscapacidad,List lista){
		
		for(int k=0; k<lista.size(); k++)
        {
			ZarDatosPersonalesTipoDiscapacidad zdpcr=(ZarDatosPersonalesTipoDiscapacidad)lista.get(k);
			if(tdiscapacidad.equals(zdpcr.getTipo()))
				return zdpcr.getId();
        }
		return 0;
	}
	
	public static String llenarXml(List lista) {
		String xml="";
        xml=xml+"<datos>";
        for(int i=0; i<lista.size(); i++)
        {
            ZarDatosPersonalesTipoDiscapacidad dc=(ZarDatosPersonalesTipoDiscapacidad)lista.get(i);            
            xml=xml+ "<nombre>"+dc.getTipo()+"</nombre>";
        }
        xml=xml+"</datos>";
        return xml;
	}

	
}
