<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "proyectoFinal.java.Conexion" %>
    <%@ page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<header class="position-sticky top-0 z-3">
    <nav class="navbar navbar-expand-lg bg-secondary">
      <div class="container-fluid">
        <img src="../assets/img/codoacodo.png" alt="Logo" width="100" class="d-inline-block align-text-top">
        Conf Bs As
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse flex-row-reverse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link text-white" aria-current="page" href="../index.html#">La conferencia</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="../index.html#oradores">Los oradores</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="../index.html#lugar">Lugar y Fecha</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="../index.html#convertite">Conviertete en orador</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-success" href="./tickets.html" aria-disabled="comprarTickets">comprar tickets</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

<% 
     Conexion myConexion= new Conexion();
     Connection cn =myConexion.conectar();
     PreparedStatement ps=cn.prepareStatement("SELECT * FROM `tickets`");
     ResultSet rs=ps.executeQuery();
%>


     <section id="comprobante" class="row justify-content-center">
    <div class="row col-md-8 mt-5">
    <table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">NOMBRE</th>
      <th scope="col">APELLIDO</th>
      <th scope="col">MAIL</th>
      <th scope="col">CANTIDAD</th>
      <th scope="col">DESCUENTO OTORGADO</th>
    </tr> 
  </thead>
  
  <%    while (rs.next()){    %>
  
  <tbody class="table-group-divider">
    <tr>
      <th scope="row"><%=rs.getInt(1)%></th>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getInt(5)%></td>   
      <%
      String categoria="null";
     switch (rs.getInt(5)) {
      case 1:
          categoria="ESTUDIANTE ( 80% )";
          break;
      case 2:
          categoria="TRAINNE ( 50% )";
          break;
      case 3:
    	  categoria="JUNIOR ( 15% )";
          break;
      default:
    	  categoria="Sin categoria ( 0% )";
          break;
     } 
     %>     
     <td><% out.println(categoria); %></td>
    </tr>
    <% } %>
  </tbody>
</table>
</div>
</section>
<div class="row justify-content-center">
<div class=" d-grid col-md-6">
          <a class="enviar btn-primary m-3 text-center" style="text-decoration:none"  href="../index.html"> VOLVER A INICIO </a>
          </div>
          </div>
<footer class="footer">
    <div class='row text-center'>
      <div class="col-md-1 offset-md-1">Preguntas frecuentes</div>
      <div class="col-md-1 ms-5">Contactanos</div>
      <div class="col-md-1 ms-5">Prensa</div>
      <div class="col-md-1 ms-5">Conferencias</div>
      <div class="col-md-1 ms-5">Terminos y condiciones</div>
      <div class="col-md-1 ms-5">Privacidad</div>
      <div class="col-md-1 ms-5">Estudiantes</div>
    </div>
  </footer>
  <script src="./js/bootstrap.min.js"></script>
  <script src="../js/main.js"></script>
  <script src="../js/script.js"></script>
</body>
</html>