package com.catani.controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
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
 public class Busqueda extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public Busqueda() {
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

		response.setContentType("text/html;charset=ISO-8859-1");
		
		String sexo = request.getParameter("sexo");
		String ecivil= request.getParameter("ecivil");
		String cresidencia= request.getParameter("cresidencia");
		String discapacidad= request.getParameter("discapacidad");
		String tipodiscapacidad= request.getParameter("tipodiscapacidad");
		String licencia= request.getParameter("licencia");
		String tlicencia= request.getParameter("tlicencia");
		
		String institucion= request.getParameter("institucion");
		String nivel= request.getParameter("nivel");
		String estado= request.getParameter("estado");
		
		String area = request.getParameter("area");
		String sector= request.getParameter("sector");
		String idioma= request.getParameter("idioma");
		String conocimiento= request.getParameter("conocimiento");
		
		Session session =HibernateUtil.getSessionFactory().openSession();
		List lC=session.createCriteria(ZarCuenta.class).list();
        List lDP=session.createCriteria(ZarDatosPersonales.class).list();
        List lDPCR=session.createCriteria(ZarDatosPersonalesCiudadResidencia.class).list();
        List lDPEC=session.createCriteria(ZarDatosPersonalesEstadoCivil.class).list();
        List lDPTD=session.createCriteria(ZarDatosPersonalesTipoDiscapacidad.class).list();
        List lDPTL=session.createCriteria(ZarDatosPersonalesTipoLicencia.class).list();
        
        List IA=session.createCriteria(ZarInformacionAcademica.class).list();
        List IAI=session.createCriteria(ZarInformacionAcademicaInstitucion.class).list();
		List IANE=session.createCriteria(ZarInformacionAcademicaNivelEstudio.class).list();
		List IAE=session.createCriteria(ZarInformacionAcademicaEstado.class).list();
		
		List EL=session.createCriteria(ZarExperienciaLaboral.class).list();
		List ELA=session.createCriteria(ZarExperienciaLaboralArea.class).list();
		List ELS=session.createCriteria(ZarExperienciaLaboralSector.class).list();
		
		List IDI=session.createCriteria(ZarIdioma.class).list();
		List IDIN=session.createCriteria(ZarIdiomaNombre.class).list();
		List INF=session.createCriteria(ZarInformatica.class).list();
		List INFC=session.createCriteria(ZarInformaticaConocimiento.class).list();
        
		ZarCuenta.GuardarResultadoBusqueda(request, sexo, ecivil, cresidencia, discapacidad,tipodiscapacidad, licencia, tlicencia, 
				institucion, nivel, estado,area, sector, idioma, conocimiento,
				lDP,lDPCR,lDPEC,lDPTD,lDPTL,IAI,IANE,IAE,IA,lC,EL,ELA,ELS,IDI,IDIN,INF,INFC);
		
		System.out.println("En el servlet: "+sexo+" "+ ecivil+" "+ cresidencia+" "+ discapacidad+" "+tipodiscapacidad+" "+ licencia+" "+ tlicencia+" "+ 
					institucion+" "+ nivel+" "+ estado+" "+area+" "+ sector+" "+ idioma+" "+ conocimiento);
        
        RequestDispatcher rw= request.getRequestDispatcher("resultadoBusqueda.jsp");
        rw.forward(request,response);
        
		
	}   	  	    
}