package com.catani.zar;

import java.util.Date;

import org.hibernate.Session;
import com.catani.persistence.HibernateUtil;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	System.out.println("Maven + Hibernate + MySQL");
        Session session = HibernateUtil.getSessionFactory().openSession();
 
        session.beginTransaction();
        ZarCuenta nuevaZarCuenta = new ZarCuenta();
 
        Date fechaActual=new Date();
        nuevaZarCuenta.setEmail("pepe@gmail.com");
        nuevaZarCuenta.setPassword("pepe123");
        nuevaZarCuenta.setFechaDeRegistro(fechaActual);
        nuevaZarCuenta.setIdDatosPersonales(1);
        nuevaZarCuenta.setIdRol(1);
 
        session.save(nuevaZarCuenta);
        session.getTransaction().commit();
    }
}
