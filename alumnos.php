<?php
$url = parse_url(getenv("CLEARDB_DATABASE_URL"));

$server = $url["host"];
$username = $url["user"];
$password = $url["pass"];
$db = substr($url["path"], 1);

$conn = new mysqli($server, $username, $password, $db);

// Check connection
if($conn === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// Attempt select query execution
$materia = $_GET['materia']
$materia = mysql_real_escape_string($materia)
$sql = mysql_query("SELECT estudiantes.matricula, estudiantes.nombre
                    from materiaestudiantes
                    inner join estudiantes on materiaestudiantes.estudiantes_id = estudiantes.id_estudiante
                    where materiaestudiantes.materia_id ='".$materia"'");

if($result = mysqli_query($conn, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>matricula</th>";
                echo "<th>nombre</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['matricula'] . "</td>";
                echo "<td>" . $row['nombre'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Close result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
}
// Close connection
mysqli_close($CO);
?>