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
$sql = "SELECT materiaestudiantes.materia_id, estudiantes.matricula, estudiantes.nombre
        from materiaestudiantes
        inner join estudiantes on materiaestudiantes.estudiantes_id = estudiantes.id_estudiante
        where materiaestudiantes.materia_id ='$materia'";

$result = $conn->query($sql);
$outp = $result->fetch_all(MYSQLI_ASSOC);
echo json_encode($outp) ;
$conn->close();
?>
