<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="org.apache.shiro.SecurityUtils"%>
<html>
<body>
<h2>Master <%= SecurityUtils.getSubject().getPrincipal() %> Hola!! :)</h2>
</body>
</html>
