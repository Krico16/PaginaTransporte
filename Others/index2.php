<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<?php include("../utils.php"); ?>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<link href="../estilo.css" type="text/css" rel="stylesheet">

<body>
    <div class="header">
        <img src="https://cdn.discordapp.com/attachments/439961746157993984/450355346687393793/head1.jpg" class="banner">
    </div>
    <table class="tabla" border="0" style="font-size:25px">
        <tr>
            <th rowspan="2">
                Datos del usuario
            </th>
            <th>
                <input type="text" placeholder="Ingresar nombre del Cliente">
            </th>
            <th>
                <input type="text" placeholder="Ingresar apellidos del Cliente">
            </th>

        </tr>

        <tr>
            <th>
                <input type="text" placeholder="Ingresar DNI del Cliente">
            </th>
            <th>
                <input type="text" name="Telf" placeholder="Telefono - Celular del Cliente">
            </th>
        </tr>

        <tr>
            <th>
                Datos adicionales
            </th>
            <th>
                <input type="radio" name="sex">Masculino
                <input type="radio" name="sex">Femenino
            </th>
        </tr>
    </table>



   
    <?php
        // put your code here
        ?>
</body>

</html>
