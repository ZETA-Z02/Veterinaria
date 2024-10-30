<!doctype html>
<html class="no-js" lang="es">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <!-- Titulo de la pagina -->
  <title>Katari | Welcome</title>
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
  <!-- CHARTJS-GRAFICOS -->
  <script src="<?php echo constant('URL') . 'node_modules/chart.js/dist/chart.umd.js' ?>"></script>
  <!-- ICONOS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
  <!-- Estilos foundation -->
  <link rel="stylesheet" href="<?php echo constant('URL'); ?>public/foundation/css/foundation.css">
  <link rel="stylesheet" href="<?php echo constant('URL'); ?>public/foundation/css/foundation-float.css">
  <link rel="stylesheet" href="<?php echo constant('URL'); ?>public/foundation/css/foundation-prototype.css">
  <!-- Motion UI -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/motion-ui@1.2.3/dist/motion-ui.min.css" />
  <!-- Motion UI end -->
  <!-- Pre-conexion fonts y fuentes -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;400&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@200;400&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
  <!-- Pre-conexion fonts y fuentes -->
  <!-- app css -->
  <link rel="stylesheet" href="<?php echo constant('URL');?>public/css/app.css">
  <!-- jquery -->
  <script src="<?php echo constant('URL'); ?>public/js/core/jquery.min.js"></script>
  <script src="<?php echo constant('URL'); ?>public/js/plugins/paginador/js/jpaginate.js"></script>
  <link rel="stylesheet" href="<?php echo constant('URL'); ?>public/js/plugins/paginador/css/jpaginate.css">
</head>

<body>
  <div class="off-canvas-wrapper">
    <div class="off-canvas position-left reveal-for-large sidebar" id="offCanvas" data-off-canvas data-transition="overload">
      <div class="grid-x margin-1 grid-margin-y">
        <div class="cell shadow img-logo">
          <img src="<?php echo constant('URL');?>public/images/katariwhite.png" alt="placeholder">
        </div>
        <div class="cell">
          <ul class="vertical menu">
            <li>
              <a href="<?php echo constant('URL');?>dashboard">
              <i class="fas fa-gauge"></i> Dashboard
              </a>
            </li>
            <li>
              <a href="<?php echo constant('URL');?>citas">
                <i class="fas fa-calendar-days"></i> Agenda
              </a>
            </li>
            <li>
              <a href="<?php echo constant('URL');?>clientes">
              <i class="fas fa-circle-info"></i> Informacion
              </a>
            </li>
            <li>
              <a href="<?php echo constant('URL');?>personal">
                <i class="fa-solid fa-user"></i> Personal
              </a>
            </li>
          </ul>
        </div>
        <div class="cell">
          <ul class="vertical menu">
            <li>
              <a href="">
                <i class="fas fa-gear"></i> Configuracion
              </a>
            </li>
            <li>
              <a href="<?php echo constant('URL')?>login/logout">
                <i class="fas fa-right-from-bracket"></i> SALIR
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="off-canvas-content" data-off-canvas-content>
      <div class="title-bar hide-for-large">
        <div class="title-bar-left">
          <button class="menu-icon" type="button" data-open="offCanvas"></button>
          <span class="title-bar-title">KATARI</span>
        </div>
      </div>
      <div class="grid-container full">
        <!-- Codigo a insertar aqui desde este contenedor -->
  