<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "proyectoFinal.java.Conexion" %>
    <%@ page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% 
    String nombre=request.getParameter("nombre");
    String apellido=request.getParameter("apellido");
    String mail=request.getParameter("mail");
    String cantidad=request.getParameter("cantidad");
    String categoria=request.getParameter("categoria");
    String sql="INSERT INTO tickets (`nombre`, `apellido`, `mail`, `cantidad`, `categoria`) VALUES ('"+nombre+"','"+apellido+"','"+mail+"','"+cantidad+"','"+categoria+"')";
    Conexion myConexion= new Conexion();
    
    Connection cn =myConexion.conectar();
    
    try{
    	Statement stm= cn.createStatement();
    	stm.executeUpdate(sql);
    } catch(Exception e){
    	out.println("no se enviaron los datos");
    	e.printStackTrace();
    }
 %>
 <jsp:include page="tickets.jsp"></jsp:include>
</body>
</html>