<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sereteli</title>
    <link rel="stylesheet" href="<?=base_url() ?>assets/css/app.css" />
    <link rel="stylesheet" href="<?=base_url() ?>assets/css/font-awesome.css" />
    <script src="<?=base_url() ?>bower_components/modernizr/modernizr.js"></script>
  </head>
  <body>
    <div class="contain-to-grid sticky">
      <nav class="top-bar fixed" data-topbar role="navigation">
        <ul class="title-area">
          <li class="name">
            <h1><a href="#"><img src="<?=base_url() ?>assets/img/logo.png" alt="logo" class="logo-header" /></a></h1>
          </li>
          <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
          <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
        </ul>
        
        <section class="top-bar-section">
          <!-- Right Nav Section -->
          <ul class="right">
            <li class=""><a href="<?=base_url() ?>index.php/home">Inicio</a></li>
            <li class=""><a href="<?=base_url() ?>index.php/servicios">Servicios</a></li>
            <li class="active"><a href="<?=base_url() ?>index.php/nosotros">Nosotros</a></li>
            <li class=""><a href="<?=base_url() ?>/blog">Blog</a></li>
            <li class=""><a href="<?=base_url() ?>index.php/contacto">Contacto</a></li>
          </ul>
          
        </section>
      </nav>
    </div>
    <!-- <header>
      
    </header>
    -->
    <ul class="example-orbit" data-orbit>
      <li>
        <img src="<?=base_url() ?>assets/img/bg3.png" alt="slide 1" />
    </li>


</ul>

<div class='titulo'>
  <div class="row">
    <div class="small-12 medium-6 large-6 columns">Nosotros</div>
  </div>
</div>


<footer>
  <div class="row">
    <div class="small-12 medium-12 large-12 columns">
    <center> 
      <ul class="button-group">
    <!-- Button Color Classes: [secondary alert success] -->
    <!-- Button Size Classes: [tiny small large] -->
        <li><a href="" class="button">Derechos reservados Sereteli</a></li>
        <li><a href="http://coredev.io" class="button">Diseñado y desarrollado por Coredev</a></li>
        <li><a href="<?=base_url() ?>index.php/Privacidad" class="button">Aviso de privacidad</a></li>
        <li><a href="#" class="button"><i class="fa fa-facebook-square"></i></a></li>
        <li><a href="#" class="button"><i class="fa fa-twitter-square"></i></a></li>
      </ul>
      </center> 
    </div>
  </div>
</footer>
<div class="footer2">
  <div class="row">
    <div class="small-6 medium-6 large-6 columns"></div>
    <div class="small-6 medium-6 large-6 columns">(55) 55 55 55 55 - correo@correo.correo</div>
  </div>
</div>
<script src="<?=base_url() ?>bower_components/jquery/dist/jquery.min.js"></script>
<script src="<?=base_url() ?>bower_components/foundation/js/foundation.min.js"></script>
<script src="<?=base_url() ?>assets/js/app.js"></script>
</body>
</html>