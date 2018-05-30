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


<body>
<?php
    crearbanner();

    crearnavbar("../principal.php","../Clients/ver.php","../Employees/ver.php","../Itinerario/ver.php","");
    
    
    echo "
    <table>
        <tr>
            <th colspan=5>Tipo de Orden</th>
        </tr>
        <tr>
            <td> <a href='ver.php?sort=ID'>Id de Ruta</a></td>
            <td> <a href='ver.php?sort=Hora'>Hora de Salida</a></td>
            <td> <a href='ver.php?sort=Fecha'>Fecha de Partida</a></td>
        </tr>
    </table> 
    <br><br>";
    
    $sql = "SELECT r.IdRuta , i.Ciudad , d.Ciudadd , r.HoraSalida ,           r.HoraLlegada , r.Fecha 
            FROM Ruta r
            INNER JOIN Inicio i
            ON r.IdInicio = i.IdInicio
            INNER JOIN Destino d
            ON r.IdDestino = d.IdDestino";
    
    if($_GET['sort'] == "ID"){
        $sql .= " ORDER BY IdRuta";
    }else if($_GET['sort'] == "Hora"){
        $sql .= " ORDER BY HoraSalida";        
    }else if($_GET['sort'] == "Fecha"){        
        $sql .= " ORDER BY Fecha";
    }
    
    $result = $conn->query($sql);
    if($result->num_rows > 0) {
        echo "
    <table>
        <tr>
            <th>Id de Ruta</th>
            <th>Inicio</th>
            <th>Destino</th>
            <th>Hora de Salida</th>
            <th>Hora de Llegada</th>
            <th>Fecha de Partida</th>
        </tr>";
        
        while($row = $result->fetch_assoc()){
            
            echo "
            <tr>
            <td>" . $row["IdRuta"] . "</td>
            <td>" . $row["Ciudad"] . " </td>
            <td>" . $row["Ciudadd"] ."</td>
            <td>" . $row["HoraSalida"] ."</td>
            <td>" . $row["HoraLlegada"] ."</td>
            <td>" . $row["Fecha"] ."</td>
            </tr>";
            
        }
        
        
    }else{
        noresults();
    }
    $conn->close();
    ?>
    
    
    
    
</body>
