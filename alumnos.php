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
$sql = "SELECT i.matricula, e.nombre, c.materia, m.nombre, c.maestro, c.grupo, c.horaInicio, c.horaFin from inscripciones as i
        inner join cursos as c on c.id_curso = i.curso
        inner join materias as m on m.clave = c.materia
        inner join estudiantes as e on e.matricula = i.matricula
        where m.clave = '$materia'";

$result = $conn->query($sql);
$outp = $result->fetch_all(MYSQLI_ASSOC);
echo json_encode($outp) ;
$conn->close();
?>
