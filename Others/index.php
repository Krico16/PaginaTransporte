<!DOCTYPE html>
<html lang="">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>

<body>
    <?php
$servername = "fdb19.awardspace.net";
$username = "2615973_sistema";
$password = "soylapoia123";
$dbname = "2615973_sistema";
$port = "3306";

//2615973_sistema	2615973_sistema	

$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//concat(e.ApellidoP , ' ' , e.ApellidoM )'Nombre de Empleado'
$sql = "SELECT e.IdEmpleado,  e.DNI , e.Nombre , e.ApellidoP , e.ApellidoM , e.IdCargo , c.nombreCargo 
        FROM Empleado e
        INNER JOIN Cargo c
        ON e.IdCargo = c.IdCargo";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    echo "<table border=1 > <tr>
        <th>IdEmpleado</th> <th>DNI</th> <th>Nombre</th> <th>Apellido Paterno</th> <th>Apellido Materno</th> <th>Id de Cargo</th> <th>Nombre</th>
        </tr> ";
    while($row = $result->fetch_assoc()) {
        
        echo "<tr>
        <th>" . $row["IdEmpleado"]  ."</th> <th> ". $row["DNI"] . "</th> <th>" . $row["Nombre"] . "</th> <th>" . $row["ApellidoP"] .   "</th> <th> " . $row["ApellidoM"] . "</th> <th>" . $row["IdCargo"] . "</th> <th> " . $row["nombreCargo"] . " </th> </tr>";
        
        /*echo "IdEmpleado: " . $row["IdEmpleado"]. " - DNI: " . $row["DNI"] . " - Nombre: " . $row["Nombre"] .
        " - Apellido Paterno: " . $row["ApellidoP"] ." - Apellido Materno: " . $row["ApellidoM"] ." - Id de Cargo: " . $row["IdCargo"] ."<br>";
        */
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();
?>




</body>

</html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
