package com.catani.controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.catani.zar.ZarCuenta;

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
 public class GuardarUsuario extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public GuardarUsuario() {
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
		
		HttpSession s=request.getSession();
		
		String tipo= request.getParameter("tipo");
		
		if (tipo.equals("form1"))
		{
			String email = request.getParameter("email");
			String password = request.getParameter("pass");
			
			if(!ZarCuenta.existeCorreo(email)){
				s.setAttribute("email", email);
				s.setAttribute("pass", password);
				
				//Ayuda a verificar que siempre debe llenar el primer formulario
				s.setAttribute("formulario1", "pasado");
				
				RequestDispatcher rw= request.getRequestDispatcher("formulario2.jsp");
		        rw.forward(request,response);
			}else
			{
				request.setAttribute("msj", "Usuario ya existente, por favor elija otro" );
				RequestDispatcher rw= request.getRequestDispatcher("formulario1.jsp");
		        rw.forward(request,response);
			}
			
	        
		}else if (tipo.equals("form2")){
			
			String foto= request.getParameter("foto");
			String nombre1= request.getParameter("nombre1");
			String nombre2 = request.getParameter("nombre2");
			String apellido1= request.getParameter("apellido1");
			String apellido2= request.getParameter("apellido2");
			String sexo = request.getParameter("sexo");
			String ecivil= request.getParameter("ecivil");
			String cedula= request.getParameter("cedula");
			String email= request.getParameter("email");
			String dia= request.getParameter("dia");
			String mes= request.getParameter("mes");
			String ano= request.getParameter("ano");
			String nacionalidad = request.getParameter("nacionalidad");
			String cresidencia= request.getParameter("cresidencia");
			String direccion= request.getParameter("domicilio");
			String discapacidad= request.getParameter("discapacidad");
			String tipodiscapacidad= request.getParameter("tipodiscapacidad");
			String telefono= request.getParameter("telefono");
			String celular= request.getParameter("celular");
			String operadora= request.getParameter("operadora");
			String movilizacion= request.getParameter("movilizacion");
			String licencia= request.getParameter("licencia");
			String tlicencia= request.getParameter("tlicencia");
			String salario= request.getParameter("salario");
			String aspiracion= request.getParameter("aspiracion");
			
			if(request.getParameter("celular1")!=null){
				System.out.println("Celular 1: "+request.getParameter("celular1"));
			}
			if(request.getParameter("celular2")!=null){
				System.out.println("Celular 2: "+request.getParameter("celular2"));
			}
			
			s.setAttribute("foto",foto);
			s.setAttribute("nombre1",nombre1);
			s.setAttribute("nombre2",nombre2);
			s.setAttribute("apellido1",apellido1);
			s.setAttribute("apellido2",apellido2);
			s.setAttribute("sexo",sexo);
			s.setAttribute("ecivil",ecivil);
			s.setAttribute("cedula",cedula);
			s.setAttribute("email1",email);
			s.setAttribute("dia",dia);
			s.setAttribute("mes",mes);
			s.setAttribute("ano",ano);
			s.setAttribute("nacionalidad",nacionalidad);
			s.setAttribute("cresidencia",cresidencia);
			s.setAttribute("direccion",direccion);
			s.setAttribute("discapacidad",discapacidad);
			s.setAttribute("tipodiscapacidad",tipodiscapacidad);
			s.setAttribute("telefono",telefono);
			s.setAttribute("celular",celular);
			s.setAttribute("operadora",operadora);
			s.setAttribute("movilizacion",movilizacion);
			s.setAttribute("licencia",licencia);
			s.setAttribute("tlicencia",tlicencia);
			s.setAttribute("salario",salario);
			s.setAttribute("aspiracion",aspiracion);
			
			if(s.getAttribute("formulario1")==null){
				request.setAttribute("msj", "Por favor, llene primero este formulario." );
				RequestDispatcher rw= request.getRequestDispatcher("formulario1.jsp");
		        rw.forward(request,response);
			}else{
				RequestDispatcher rw= request.getRequestDispatcher("formulario3.jsp");
		        rw.forward(request,response);
			}
			
			
		}else if (tipo.equals("form3")){
			
			System.out.println("desde la sesionnnn: "+s.getAttribute("dia"));
			
			String titulo= request.getParameter("titulo");
			String pais = request.getParameter("pais");
			String institucion= request.getParameter("institucion");
			String dia= request.getParameter("dia");
			String mes= request.getParameter("mes");
			String ano= request.getParameter("ano");
			String dia1= request.getParameter("dia1");
			String mes1= request.getParameter("mes1");
			String ano1= request.getParameter("ano1");
			String nivel= request.getParameter("nivel");
			String estado= request.getParameter("estado");
			String promedio= request.getParameter("promedio");
			String rango= request.getParameter("rango");
			String materias= request.getParameter("materias");
			String cantidad= request.getParameter("cantidad");
			String logro= request.getParameter("logro");
			if(logro.length()>150)
				logro=logro.substring(0, 148);
			
			s.setAttribute("titulo",titulo);
			s.setAttribute("pais",pais);
			s.setAttribute("institucion",institucion);
			s.setAttribute("dia1",dia);
			s.setAttribute("mes1",mes);
			s.setAttribute("ano1",ano);
			s.setAttribute("dia2",dia1);
			s.setAttribute("mes2",mes1);
			s.setAttribute("ano2",ano1);
			s.setAttribute("nivel",nivel);
			s.setAttribute("estado",estado);
			s.setAttribute("promedio",promedio);
			s.setAttribute("rango",rango);
			s.setAttribute("materias",materias);
			s.setAttribute("cantidad",cantidad);
			s.setAttribute("logro",logro);
			
			if(s.getAttribute("formulario1")==null){
				request.setAttribute("msj", "Por favor, llene primero este formulario." );
				RequestDispatcher rw= request.getRequestDispatcher("formulario1.jsp");
		        rw.forward(request,response);
			}else{
				RequestDispatcher rw= request.getRequestDispatcher("formulario4.jsp");
		        rw.forward(request,response);
			}
			
			
		}else if (tipo.equals("form4")){
			
			String empresa= request.getParameter("empresa");
			String area = request.getParameter("area");
			String cargo= request.getParameter("cargo");
			String dia= request.getParameter("dia");
			String mes= request.getParameter("mes");
			String ano= request.getParameter("ano");
			String dia1= request.getParameter("dia1");
			String mes1= request.getParameter("mes1");
			String ano1= request.getParameter("ano1");
			String sector= request.getParameter("sector");
			String descripcion= request.getParameter("descripcion");
			String logros= request.getParameter("logros");
			if(descripcion.length()>150)
				descripcion=descripcion.substring(0, 148);
			if(logros.length()>200)
				logros=logros.substring(0, 198);
			
			s.setAttribute("empresa",empresa);
			s.setAttribute("area",area);
			s.setAttribute("cargo",cargo);
			s.setAttribute("dia3",dia);
			s.setAttribute("mes3",mes);
			s.setAttribute("ano3",ano);
			s.setAttribute("dia4",dia1);
			s.setAttribute("mes4",mes1);
			s.setAttribute("ano4",ano1);
			s.setAttribute("sector",sector);
			s.setAttribute("descripcion",descripcion);
			s.setAttribute("logros",logros);
			
			if(s.getAttribute("formulario1")==null){
				request.setAttribute("msj", "Por favor, llene primero este formulario." );
				RequestDispatcher rw= request.getRequestDispatcher("formulario1.jsp");
		        rw.forward(request,response);
			}else{
				RequestDispatcher rw= request.getRequestDispatcher("formulario5.jsp");
		        rw.forward(request,response);
			}
			
			
		}else if (tipo.equals("form5")){
			
			String idioma= request.getParameter("idioma");
			String escrito = request.getParameter("escrito");
			String oral= request.getParameter("oral");
			String lectura= request.getParameter("lectura");
			
			s.setAttribute("idioma",idioma);
			s.setAttribute("escrito",escrito);
			s.setAttribute("oral",oral);
			s.setAttribute("lectura",lectura);
			
			if(s.getAttribute("formulario1")==null){
				request.setAttribute("msj", "Por favor, llene primero este formulario." );
				RequestDispatcher rw= request.getRequestDispatcher("formulario1.jsp");
		        rw.forward(request,response);
			}else{
				RequestDispatcher rw= request.getRequestDispatcher("formulario6.jsp");
		        rw.forward(request,response);
			}
			
			
		}else if (tipo.equals("form6")){
			
			String conocimiento= request.getParameter("conocimiento");
			String nivel = request.getParameter("nivel");
			
			s.setAttribute("conocimiento",conocimiento);
			s.setAttribute("nivel2",nivel);
			
			if(s.getAttribute("formulario1")==null){
				request.setAttribute("msj", "Por favor, llene primero este formulario." );
				RequestDispatcher rw= request.getRequestDispatcher("formulario1.jsp");
		        rw.forward(request,response);
			}else{
				RequestDispatcher rw= request.getRequestDispatcher("formulario7.jsp");
		        rw.forward(request,response);
			}
			
			
		}else if (tipo.equals("form7")){
			
			String nconocimiento= request.getParameter("nconocimiento");
			String descripcion = request.getParameter("descripcion");
			if(descripcion.length()>150)
				descripcion=descripcion.substring(0, 148);
			
			s.setAttribute("nconocimiento",nconocimiento);
			s.setAttribute("descripcion2",descripcion);
			
			if(s.getAttribute("formulario1")==null){
				request.setAttribute("msj", "Por favor, llene primero este formulario." );
				RequestDispatcher rw= request.getRequestDispatcher("formulario1.jsp");
		        rw.forward(request,response);
			}else{
				RequestDispatcher rw= request.getRequestDispatcher("formulario8.jsp");
		        rw.forward(request,response);
			}
			
			
		}else if (tipo.equals("form8")){
			
			String nombre= request.getParameter("nombre");
			String relacion = request.getParameter("relacion");
			String empresa= request.getParameter("empresa");
			String cargo= request.getParameter("cargo");
			String telefono= request.getParameter("telefono");
			String celular= request.getParameter("celular");
			String comentario= request.getParameter("comentario");
			if(comentario.length()>150)
				comentario=comentario.substring(0, 148);
			
			s.setAttribute("nombre",nombre);
			s.setAttribute("relacion",relacion);
			s.setAttribute("empresaR",empresa);
			s.setAttribute("cargo2",cargo);
			s.setAttribute("telefono2",telefono);
			s.setAttribute("celular2",celular);
			s.setAttribute("comentario",comentario);
			
			if(s.getAttribute("formulario1")==null){
				request.setAttribute("msj", "Por favor, llene primero este formulario." );
				RequestDispatcher rw= request.getRequestDispatcher("formulario1.jsp");
		        rw.forward(request,response);
			}else{
				ZarCuenta.GuardarZarCuenta(s);			
				request.setAttribute("msj", "Guardo con exito." );
				RequestDispatcher rw= request.getRequestDispatcher("index.jsp");
		        rw.forward(request,response);
			}
			
		}
	}   	  	    
}