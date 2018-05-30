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
    
    
    
    $sql= "SELECT * FROM Boleto";
    
    $result = $conn->query($sql);
    
    //IdItinerario IdPromocion IdRuta IdEncomienda IdMaleta IdVehiculo
    //ALTER TABLE `Itinerario` CHANGE `DetalleEncomienda` REFERENCES DetalleEncomieda(IdDetalle);
    if($result->num_rows > 0){
        echo "
           <table>
                <tr>
                   <th>ID</th>
                   <th>Ruta</th>
                   <th>Precio</th>
                </tr>";
        
        while($row = $result->fetch_assoc()){
            echo "
                    <tr>
                        <td> " . $row["IDBoleto"] ." </td>
                        <td> " . $row["IdRuta"] . " </td>
                        <td> S/." . $row["Precio"] . " </td>"
/*                        <td> " . $row["Ciudadd"] . " </td>
                        <td> " . $row["Placa"] . " </td>*/
                    ."</tr>"; 
            
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



    $sql= "SELECT * FROM Boleto";

    $result = $conn->query($sql);

    //IdItinerario IdPromocion IdRuta IdEncomienda IdMaleta IdVehiculo
    //ALTER TABLE `Itinerario` CHANGE `DetalleEncomienda` REFERENCES DetalleEncomieda(IdDetalle);
    if($result->num_rows > 0){
        echo "
           <table>
                <tr>
                   <th>ID</th>
                   <th>Ruta</th>
                   <th>Precio</th>
                </tr>";

        while($row = $result->fetch_assoc()){
            echo "
                    <tr>
                        <td> " . $row["IDBoleto"] ." </td>
                        <td> " . $row["IdRuta"] . " </td>
                        <td> S/." . $row["Precio"] . " </td>"
/*                        <td> " . $row["Ciudadd"] . " </td>
                        <td> " . $row["Placa"] . " </td>*/
                    ."</tr>";

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
