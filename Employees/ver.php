<!DOCTYPE html>
<html lang="">
<?php include ('../utils.php');
      include('../conn.php');
    ?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GOTTA GO FAST Inc</title>
    <link rel="icon" href="https://cdn.discordapp.com/attachments/439961746157993984/450468016933699594/logo_circulo.png">
    <link rel="stylesheet" href="style.css">
    <?php imports(); ?>
</head>


<body class="body">
    <?php
    crearbanner();
 crearnavbar("../principal.php","../Clients/ver.php","","../Itinerario/ver.php","../Rutas/ver.php");
    echo "
    <table>
        <tr>
            <th colspan=5>Tipo de Orden</th>
        </tr>
        <tr>
            <td> <a href='ver.php?sort=IdEmpleado'>ID</a></td>
            <td> <a href='ver.php?sort=DNI'>DNI</a></td>
            <td> <a href='ver.php?sort=Nombre'>Nombre</a></td>
            <td> <a href='ver.php?sort=Apellido'>Apellido</a></td>
            <td> <a href='ver.php?sort=Cargo'>Cargo</a></td>
        </tr>
    </table>";
    $sql = "SELECT e.IdEmpleado,  e.DNI , e.Nombre , e.ApellidoP , e.ApellidoM , e.Sexo , e.IdCargo , c.nombreCargo
            FROM Empleado e
            INNER JOIN Cargo c
            ON e.IdCargo = c.IdCargo";

if ($_GET['sort'] == 'DNI')
{
    $sql .= " ORDER BY e.DNI";
}
elseif ($_GET['sort'] == 'Nombre')
{
    $sql .= " ORDER BY e.Nombre";
}
elseif ($_GET['sort'] == 'Apellido')
{
    $sql .= " ORDER BY e.ApellidoP";
}
elseif($_GET['sort'] == 'Cargo')
{
    $sql .= " ORDER BY e.IdCargo";
}elseif ($_GET['sort'] == 'IdEmpleado')
{
    $sql .= " ORDER BY e.IdEmpleado";
}


    echo "<br><br>";
    /*$sql = "SELECT e.IdEmpleado,  e.DNI , e.Nombre , e.ApellidoP , e.ApellidoM , e.Sexo , e.IdCargo , c.nombreCargo
            FROM Empleado e
            INNER JOIN Cargo c
            ON e.IdCargo = c.IdCargo";*/
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
    // output data of each row
        echo "<table> <tr class='tableheader'>
              <th>IdEmpleado</th> <th>DNI</th> <th>Nombre</th> <th>Apellido Paterno</th> <th>Apellido Materno</th> <th>Sexo</th> <th>Id de Cargo</th> <th>Nombre</th>
              </tr> ";
        while($row = $result->fetch_assoc()) {

        echo "<tr>
        <td>" . $row["IdEmpleado"]  ."</td> <td> ". $row["DNI"] . "</td> <td>" . $row["Nombre"] . "</td> <td>" . $row["ApellidoP"] .   "</td> <td> " . $row["ApellidoM"] . "</td> <td>" . $row["Sexo"]. "</td> <td>" . $row["IdCargo"]. "</td> <td> ". $row["nombreCargo"] . " </td> </tr>";

        /*echo "IdEmpleado: " . $row["IdEmpleado"]. " - DNI: " . $row["DNI"] . " - Nombre: " . $row["Nombre"] .
        " - Apellido Paterno: " . $row["ApellidoP"] ." - Apellido Materno: " . $row["ApellidoM"] ." - Id de Cargo: " . $row["IdCargo"] ."<br>";
        */
    }
    echo "</table>";
    echo "<br><br>";
} else {
    noresults();
}

    ?>
</body>
