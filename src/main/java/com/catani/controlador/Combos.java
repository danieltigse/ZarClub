package com.catani.controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import com.catani.persistence.HibernateUtil;
import com.catani.zar.*;

/**
 * Uses JSecurity to authenticate a user
 * If user can be authenticated successfully
 * forwards user to /secure/index.jsp
 * 
 * If user cannot be authenticated then forwards
 * user to the /login.jsp which will display
 * an error message
 *
 */
 public class Combos extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public Combos() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out ;
		String xml="";
		
		String accion=request.getParameter("accion");
		
		Session session =HibernateUtil.getSessionFactory().openSession();
        Criteria c_zarDPCR=session.createCriteria(ZarDatosPersonalesCiudadResidencia.class);
        Criteria c_zarDPEC=session.createCriteria(ZarDatosPersonalesEstadoCivil.class);
        Criteria c_zarDPTCO=session.createCriteria(ZarDatosPersonalesTelefonoCelularOperadora.class);
        Criteria c_zarDPTD=session.createCriteria(ZarDatosPersonalesTipoDiscapacidad.class);
        Criteria c_zarDPTL=session.createCriteria(ZarDatosPersonalesTipoLicencia.class);
        
        Criteria c_zarIAI=session.createCriteria(ZarInformacionAcademicaInstitucion.class);
        Criteria c_zarIAE=session.createCriteria(ZarInformacionAcademicaEstado.class);
        Criteria c_zarIAN=session.createCriteria(ZarInformacionAcademicaNivelEstudio.class);
        
        Criteria c_zarELA=session.createCriteria(ZarExperienciaLaboralArea.class);
        Criteria c_zarELS=session.createCriteria(ZarExperienciaLaboralSector.class);
        
        Criteria c_zarIN=session.createCriteria(ZarIdiomaNombre.class);
        
        Criteria c_zarIC=session.createCriteria(ZarInformaticaConocimiento.class);
        
        Criteria c_zarRR=session.createCriteria(ZarReferenciaRelacion.class);
        
        if(accion.equals("comboEstadoCivil")){
            response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarDatosPersonalesEstadoCivil.llenarXml(c_zarDPEC.list());
            out.println(xml);
        }else if(accion.equals("comboCiudad")){
        	response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarDatosPersonalesCiudadResidencia.llenarXml(c_zarDPCR.list());
            out.println(xml);
        }else if(accion.equals("comboOperadora")){
        	response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarDatosPersonalesTelefonoCelularOperadora.llenarXml(c_zarDPTCO.list());
            out.println(xml);
        }else if(accion.equals("comboDiscapacidad")){
        	response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarDatosPersonalesTipoDiscapacidad.llenarXml(c_zarDPTD.list());
            out.println(xml);
        }else if(accion.equals("comboLicencia")){
        	response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarDatosPersonalesTipoLicencia.llenarXml(c_zarDPTL.list());
            out.println(xml);
        }else if(accion.equals("comboInstitucion")){
        	response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarInformacionAcademicaInstitucion.llenarXml(c_zarIAI.list());
            out.println(xml);
        }else if(accion.equals("comboEstado")){
        	response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarInformacionAcademicaEstado.llenarXml(c_zarIAE.list());
            out.println(xml);
        }else if(accion.equals("comboNivel")){
        	response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarInformacionAcademicaNivelEstudio.llenarXml(c_zarIAN.list());
            out.println(xml);
        }else if(accion.equals("comboArea")){
        	response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarExperienciaLaboralArea.llenarXml(c_zarELA.list());
            out.println(xml);
        }else if(accion.equals("comboSector")){
        	response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarExperienciaLaboralSector.llenarXml(c_zarELS.list());
            out.println(xml);
        }else if(accion.equals("comboIdioma")){
        	response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarIdiomaNombre.llenarXml(c_zarIN.list());
            out.println(xml);
        }else if(accion.equals("comboConocimiento")){
        	response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarInformaticaConocimiento.llenarXml(c_zarIC.list());
            out.println(xml);
        }else if(accion.equals("comboRelacion")){
        	response.setContentType("text/xml;charset=ISO-8859-1");
            out=response.getWriter();
            xml=ZarReferenciaRelacion.llenarXml(c_zarRR.list());
            out.println(xml);
        }
        
        
               
		
	}   	  	    
}