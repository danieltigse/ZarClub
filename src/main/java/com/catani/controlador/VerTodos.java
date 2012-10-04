package com.catani.controlador;

import java.io.IOException;
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
 public class VerTodos extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public VerTodos() {
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
        
        ZarCuenta.guardarTodosRequestDP(
        		c_zarC.list(), 
        		c_zarDP.list(),
        		c_zarDPCR.list(), 
        		c_zarDPEC.list(),
        		c_zarDPTC.list(), 
        		c_zarDPTCO.list(), 
        		c_zarDPTD.list(), 
        		c_zarDPTL.list(), 
        		request);
        
        RequestDispatcher rw= request.getRequestDispatcher("consultar.jsp");
        rw.forward(request,response);
        
		
	}   	  	    
}