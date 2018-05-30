<<<<<<< HEAD
<?php 
function crearbanner(){
echo "<div class='header'>
        <img src='https://cdn.discordapp.com/attachments/439961746157993984/450355346687393793/head1.jpg' class='banner'>
    </div>";
}

function crearnavbar($home,$clients,$emp,$itin,$rut){
    echo "
    <nav class='navbar navbar-expand-sm bg-dark navbar-dark'>
                <!-- Brand -->
            <a class='navbar-brand' href='$home'>Inicio</a>
                <!-- Links -->
            <ul class='navbar-nav'>
                <li class='nav-item'>
                    <a class='nav-link' href='$clients'>Ver Clientes</a>
                </li>
                <li class='nav-item'>
                    <a class='nav-link' href='$emp'>Ver Personal</a>
                </li>
                <li class='nav-item'>
                    <a class='nav-link' href='$itin'>Ver Itinerario</a>
                </li>
                <li class='nav-item'>
                    <a class='nav-link' href='$rut'>Ver Prox. Viajes</a>
                </li>   
                    <!-- Dropdown -->
                <li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' href='#' id='navbardrop' data-toggle='dropdown'>Agregar</a>
                    <div class='dropdown-menu'>
                        <a class='dropdown-item' href='Clients/agregar.php'>Clientes</a>
                        <a class='dropdown-item' href='#'>Personal</a>
                        <a class='dropdown-item' href='#'>Algo mas</a>
                    </div>
                </li>
            </ul>
        </nav>";
    
}

function imports(){
    echo "<!-- Latest compiled and minified CSS -->
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'>
        <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'></script>";
}

function noresults(){
    echo "
   <div style='margin-right:auto;margin-left:auto;text-align: center;background-color:#b22345'>
       <br>
       <br>
       <br>
       <br>
       <a style='font-size: 35px;text-align: center'>No hay resultados :(</a>
       <br>
       <br>
       <br>
       <br>
   </div>
          ";
}

=======
<?php
function crearbanner(){
echo "<div class='header'>
        <img src='https://cdn.discordapp.com/attachments/439961746157993984/450355346687393793/head1.jpg' class='banner'>
    </div>";
}

function crearnavbar($home,$clients,$emp,$itin,$rut){
    echo "
    <nav class='navbar navbar-expand-sm bg-dark navbar-dark'>
                <!-- Brand -->
            <a class='navbar-brand' href='$home'>Inicio</a>
                <!-- Links -->
            <ul class='navbar-nav'>
                <li class='nav-item'>
                    <a class='nav-link' href='$clients'>Ver Clientes</a>
                </li>
                <li class='nav-item'>
                    <a class='nav-link' href='$emp'>Ver Personal</a>
                </li>
                <li class='nav-item'>
                    <a class='nav-link' href='$itin'>Ver Itinerario</a>
                </li>
                <li class='nav-item'>
                    <a class='nav-link' href='$rut'>Ver Prox. Viajes</a>
                </li>
                    <!-- Dropdown -->
                <li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' href='#' id='navbardrop' data-toggle='dropdown'>Agregar</a>
                    <div class='dropdown-menu'>
                        <a class='dropdown-item' href='Clients/agregar.php'>Clientes</a>
                        <a class='dropdown-item' href='#'>Personal</a>
                        <a class='dropdown-item' href='#'>Algo mas</a>
                    </div>
                </li>
            </ul>
        </nav>";

}

function imports(){
    echo "<!-- Latest compiled and minified CSS -->
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'>
        <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'></script>";
}

function noresults(){
    echo "
   <div style='margin-right:auto;margin-left:auto;text-align: center;background-color:#b22345'>
       <br>
       <br>
       <br>
       <br>
       <a style='font-size: 35px;text-align: center'>No hay resultados :(</a>
       <br>
       <br>
       <br>
       <br>
   </div>
          ";
}

>>>>>>> 68e122f0db5d8b1dea16a300440760ab6d87f47c
