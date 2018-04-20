<?php
$json_str = file_get_contents('php://input');
$json_obj = json_decode($json_str);

$semestre = $json_obj->{'semestre'};

require_once "DbOperation.php";
$dbo = new DbOperation();

$result = $dbo->getMaterias("1");
$outp = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($outp);
$result->free();
$conn->close();
?>
