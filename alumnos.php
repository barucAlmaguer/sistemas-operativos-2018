<?php
$json_str = file_get_contents('php://input');
$json_obj = json_decode($json_str);

$url = parse_url(getenv("CLEARDB_DATABASE_URL"));

$server = $url["host"];
$username = $url["user"];
$password = $url["pass"];
$db = substr($url["path"], 1);

$conn = new mysqli($server, $username, $password, $db);

$materia = $_GET['materia'];
$materia = mysql_real_escape_string($materia);
$sql = "SELECT estudiantes.matricula, estudiantes.nombre
        from materiaestudiantes
        inner join estudiantes on materiaestudiantes.estudiantes_id = estudiantes.id_estudiante
        where materiaestudiantes.materia_id =".$json_obj->{'materia'};

$result = mysql_query($query);
$row = mysql_fetch_assoc($result);
$contents = $row['content'];
echo $contents;
$conn->close();
?>
