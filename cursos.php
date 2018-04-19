<?php
$json_str = file_get_contents('php://input');
$json_obj = json_decode($json_str);


$url = parse_url(getenv("CLEARDB_DATABASE_URL"));

$server = $url["host"];
$username = $url["user"];
$password = $url["pass"];
$db = substr($url["path"], 1);

$conn = new mysqli($server, $username, $password, $db);

$sql = "select cursos.id_curso as curso, cursos.grupo, materias.nombre as materia, 
        maestros.nombre as maestro, frecuencias.diaSemana as frecuencia, cursos.horaInicio, 
        cursos.horaFin
        from cursos
        join materias on cursos.materia = materias.clave
        join maestros on cursos.maestro = maestros.matricula
        join frecuencias on cursos.frecuencia = frecuencias.id_frecuencias";
$result = $conn->query($sql);
$outp = $result->fetch_all(MYSQLI_ASSOC);
echo json_encode($outp) ;
$conn->close();
?>
