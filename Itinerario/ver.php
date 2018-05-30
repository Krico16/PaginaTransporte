<<<<<<< HEAD
<!DOCTYPE html>
<html lang="">
<?php
    include("../utils.php");
    include("../conn.php");
    ?>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>GOTTA GO FAST Inc</title>
    <link rel="icon" href="https://cdn.discordapp.com/attachments/439961746157993984/450468016933699594/logo_circulo.png">
    <?php imports(); ?>
</head>

<body>
   <?php
    crearbanner();
    crearnavbar("../principal.php" , "../Clients/ver.php","../Employees/ver.php","","../Rutas/ver.php");
    
    
    
    
    $sql= "SELECT i.IdItinerario , p.Nombre , in.Ciudad , d.Ciudadd , v.Placa
           FROM Itinerario i
           INNER JOIN Promocion p 
           ON i.IdPromocion = p.IdPromocion
           INNER JOIN Ruta r
           ON i.IdRuta = r.IdRuta
           INNER JOIN Inicio in
           ON r.IdInicio = in.IdInicio
           INNER JOIN Destino d
           ON r.IdDestino = d.IdDestino
           INNER JOIN Vehiculo v
           ON v.IdVehiculo = i.IdVehiculo
           ";
    
    $result = $conn->query($sql);
    
    //IdItinerario IdPromocion IdRuta IdEncomienda IdMaleta IdVehiculo
    if($result->num_rows > 0){
        echo "
           <table>
                <tr>
                   <th>ID de Itinerario</th>
                   <th>Nombre de Promocion</th>
                   <th>Ciudad de Inicio</th>
                   <th>Ciudad de Destino</th>
                   <th>Placa de Vehiculo</th>
                </tr>";
        
        while($row = $result->fetch_assoc()){
            echo "
                    <tr>
                        <td> " . $row["IdItinerario"] ." </td>
                        <td> " . $row["Nombre"] . " </td>
                        <td> " . $row["Ciudad"] . " </td>
                        <td> " . $row["Ciudadd"] . " </td>
                        <td> " . $row["Placa"] . " </td>
                    </tr>";
            
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
<?php
    include("../utils.php");
    include("../conn.php");
    ?>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>GOTTA GO FAST Inc</title>
    <link rel="icon" href="https://cdn.discordapp.com/attachments/439961746157993984/450468016933699594/logo_circulo.png">
    <?php imports(); ?>
</head>

<body>
   <?php
    crearbanner();
    crearnavbar("../principal.php" , "../Clients/ver.php","../Employees/ver.php","","../Rutas/ver.php");




    $sql= "SELECT i.IdItinerario , p.Nombre , in.Ciudad , d.Ciudadd , v.Placa
           FROM Itinerario i
           INNER JOIN Promocion p
           ON i.IdPromocion = p.IdPromocion
           INNER JOIN Ruta r
           ON i.IdRuta = r.IdRuta
           INNER JOIN Inicio in
           ON r.IdInicio = in.IdInicio
           INNER JOIN Destino d
           ON r.IdDestino = d.IdDestino
           INNER JOIN Vehiculo v
           ON v.IdVehiculo = i.IdVehiculo
           ";

    $result = $conn->query($sql);

    //IdItinerario IdPromocion IdRuta IdEncomienda IdMaleta IdVehiculo
    if($result->num_rows > 0){
        echo "
           <table>
                <tr>
                   <th>ID de Itinerario</th>
                   <th>Nombre de Promocion</th>
                   <th>Ciudad de Inicio</th>
                   <th>Ciudad de Destino</th>
                   <th>Placa de Vehiculo</th>
                </tr>";

        while($row = $result->fetch_assoc()){
            echo "
                    <tr>
                        <td> " . $row["IdItinerario"] ." </td>
                        <td> " . $row["Nombre"] . " </td>
                        <td> " . $row["Ciudad"] . " </td>
                        <td> " . $row["Ciudadd"] . " </td>
                        <td> " . $row["Placa"] . " </td>
                    </tr>";

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
