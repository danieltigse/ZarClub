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
 public class VerPerfil extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public VerPerfil() {
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
		
		Session session =HibernateUtil.getSessionFactory().openSession();
        Criteria c_zarC=session.createCriteria(ZarCuenta.class);
        Criteria c_zarDP=session.createCriteria(ZarDatosPersonales.class);
        Criteria c_zarDPCR=session.createCriteria(ZarDatosPersonalesCiudadResidencia.class);
        Criteria c_zarDPEC=session.createCriteria(ZarDatosPersonalesEstadoCivil.class);
        Criteria c_zarDPTC=session.createCriteria(ZarDatosPersonalesTelefonoCelular.class);
        Criteria c_zarDPTCO=session.createCriteria(ZarDatosPersonalesTelefonoCelularOperadora.class);
        Criteria c_zarDPTD=session.createCriteria(ZarDatosPersonalesTipoDiscapacidad.class);
        Criteria c_zarDPTL=session.createCriteria(ZarDatosPersonalesTipoLicencia.class);
        
        Criteria c_zarIA=session.createCriteria(ZarInformacionAcademica.class);
        Criteria c_zarIAE=session.createCriteria(ZarInformacionAcademicaEstado.class);
        Criteria c_zarIAI=session.createCriteria(ZarInformacionAcademicaInstitucion.class);
        Criteria c_zarIAN=session.createCriteria(ZarInformacionAcademicaNivelEstudio.class);
        
        Criteria c_zarEL=session.createCriteria(ZarExperienciaLaboral.class);
        Criteria c_zarELA=session.createCriteria(ZarExperienciaLaboralArea.class);
        Criteria c_zarELS=session.createCriteria(ZarExperienciaLaboralSector.class);
        
        Criteria c_zarID=session.createCriteria(ZarIdioma.class);
        Criteria c_zarIDN=session.createCriteria(ZarIdiomaNombre.class);
        
        Criteria c_zarIN=session.createCriteria(ZarInformatica.class);
        Criteria c_zarINC=session.createCriteria(ZarInformaticaConocimiento.class);
        
        Criteria c_zarR=session.createCriteria(ZarReferencia.class);
        Criteria c_zarRR=session.createCriteria(ZarReferenciaRelacion.class);
        
        Criteria c_zarCONO=session.createCriteria(ZarConocimiento.class);
                
        //El id de la cuenta osea el email lo sacamos de shiro subject algo asi
		String email_user=SecurityUtils.getSubject().getPrincipal().toString();
        
        ZarCuenta.guardarPerfilRequestDP(email_user,c_zarC.list(),
        		 c_zarDP.list(),c_zarDPCR.list(), c_zarDPEC.list(),
        		 c_zarDPTC.list(),	c_zarDPTCO.list(),c_zarDPTD.list(),
        		 c_zarDPTL.list(),request, c_zarIA.list(), c_zarIAE.list(),
        		 c_zarIAI.list(), c_zarIAN.list(), c_zarEL.list(),
        		 c_zarELA.list(), c_zarELS.list(),
    			 c_zarID.list(), c_zarIDN.list(),
    			 c_zarIN.list(), c_zarINC.list(),
    			 c_zarCONO.list(),
    			 c_zarR.list(), c_zarRR.list());
        
        RequestDispatcher rw= request.getRequestDispatcher("perfil.jsp");
        rw.forward(request,response);
        
		
	}   	  	    
}