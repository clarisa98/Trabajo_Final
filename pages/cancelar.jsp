<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CANCELAR</title>
  <link rel="shortcut icon" href="../pages/logo.ico" type="image/x-icon">
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
  <main>
   <div class="text-center m-5">
      <h1>SU COMPRA FUE CANCELADA</h1>
    </div>
    
    <div class="row justify-content-center m-5 text-center">
      <div class="col-md-3">
        <div class="card border-primary mb-3" style="max-width: 18rem;">
          <div class="card-header bg-primary border-primary text-white">
            <h4>ESTUDIANTE</h4>
          </div>
          <div class="card-body">
            <h5 class="card-title">Tienen un descuento del</h5>
            <h2 class="card-text">80%</h2>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card border-info mb-3" style="max-width: 18rem;">
          <div class="card-header bg-info border-info text-white">
            <h4>TRAINNE</h4>
          </div>
          <div class="card-body">
            <h5 class="card-title">Tienen un descuento del</h5>
            <h2 class="card-text">50%</h2>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card border-warning mb-3" style="max-width: 18rem;">
          <div class="card-header bg-warning border-warning text-white">
            <h4>JUNIOR</h4>
          </div>
          <div class="card-body">
            <h5 class="card-title">Tienen un descuento del</h5>
            <h2 class="card-text">15%</h2>
          </div>
        </div>
      </div>
    </div>
  
      <div class="row justify-content-center">
        <div class="row col-md-9">
          <div class="d-grid">
          <a class="enviar btn-primary m-3 text-center" style="text-decoration:none"  href="./tickets.html"> COMPRAR TICKETS </a>
          </div>
          <div class="d-grid">
          <a class="enviar btn-primary m-3 text-center" style="text-decoration:none"  href="../index.html"> VOLVER A INICIO </a>
          </div>
      </div>
      </div>
  </main>
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