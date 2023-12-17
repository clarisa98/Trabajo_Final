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
    Conexion myConexion= new Conexion();
    
    Connection cn =myConexion.conectar();
    
    try{
    	Statement stm= cn.createStatement();
    	ResultSet rsId=stm.executeQuery("SELECT MAX(id) FROM tickets");
    
    while(rsId.next()){
    	
    	int idMax=rsId.getInt(1);
    	String query="DELETE FROM `tickets` WHERE id= "+idMax+"";
    	stm.executeUpdate(query);
       }
    
    }
    
    catch(Exception e){
    	e.printStackTrace();
    }
    %>
</body>
<jsp:include page="./cancelar.jsp"></jsp:include>
</html>