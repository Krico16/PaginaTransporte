<<<<<<< HEAD
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
    crearnavbar("../principal.php","","../Employees/ver.php","../Itinerario/ver.php","../Rutas/ver.php");
    
 echo "
    <table>
        <tr>
            <th colspan=5>Tipo de Orden</th>
        </tr>
        <tr>
            <td> <a href='ver.php?sort=DNI'>DNI</a></td>
            <td> <a href='ver.php?sort=Nombre'>Nombre</a></td>
            <td> <a href='ver.php?sort=Apellido'>Apellido</a></td>
            <td> <a href='ver.php?sort=Sexo'>Sexo</a></td>
        </tr>
    </table> 
    <br><br>";    
    
    $sql = "SELECT * FROM Cliente";
    
    if ($_GET['sort'] == 'DNI'){
    $sql .= " ORDER BY DNI";
    }elseif ($_GET['sort'] == 'Nombre'){
    $sql .= " ORDER BY Nombre";
    }elseif ($_GET['sort'] == 'Apellido'){
    $sql .= " ORDER BY Apellido";
    }elseif ($_GET['sort'] == 'Sexo'){
    $sql .= " ORDER BY Sexo";
    }
    
    
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
        echo "
            <table>
                <tr>
                       <th>DNI</th>
                       <th>Nombre</th>
                       <th>Apellidos</th>
                       <th>Telefono</th>
                       <th>Sexo</th>
                </tr>            
            ";
        
        while($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>" . $row["DNI"]  ."</td>
                    <td>" . $row["Nombre"]  ."</td>
                    <td>" . $row["Apellido"]  ."</td>
                    <td>" . $row["Telefono"]  ."</td>
                    <td>" . $row["Sexo"] ."</td>".
                 "</tr>";
        }
        
        echo "</table>";
        
    }else{
        noresults();
    }
    $conn->close();
   ?>

</body>

</html>
=======
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
    crearnavbar("../principal.php","","../Employees/ver.php","../Itinerario/ver.php","../Rutas/ver.php");

 echo "
    <table>
        <tr>
            <th colspan=5>Tipo de Orden</th>
        </tr>
        <tr>
            <td> <a href='ver.php?sort=DNI'>DNI</a></td>
            <td> <a href='ver.php?sort=Nombre'>Nombre</a></td>
            <td> <a href='ver.php?sort=Apellido'>Apellido</a></td>
            <td> <a href='ver.php?sort=Sexo'>Sexo</a></td>
        </tr>
    </table>
    <br><br>";

    $sql = "SELECT * FROM Cliente";

    if ($_GET['sort'] == 'DNI'){
    $sql .= " ORDER BY DNI";
    }elseif ($_GET['sort'] == 'Nombre'){
    $sql .= " ORDER BY Nombre";
    }elseif ($_GET['sort'] == 'Apellido'){
    $sql .= " ORDER BY Apellido";
    }elseif ($_GET['sort'] == 'Sexo'){
    $sql .= " ORDER BY Sexo";
    }


    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "
            <table>
                <tr>
                       <th>DNI</th>
                       <th>Nombre</th>
                       <th>Apellidos</th>
                       <th>Telefono</th>
                       <th>Sexo</th>
                </tr>
            ";

        while($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>" . $row["DNI"]  ."</td>
                    <td>" . $row["Nombre"]  ."</td>
                    <td>" . $row["Apellido"]  ."</td>
                    <td>" . $row["Telefono"]  ."</td>
                    <td>" . $row["Sexo"] ."</td>".
                 "</tr>";
        }

        echo "</table>";

    }else{
        noresults();
    }
    $conn->close();
   ?>

</body>

</html>
>>>>>>> 68e122f0db5d8b1dea16a300440760ab6d87f47c
