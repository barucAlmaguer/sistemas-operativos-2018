<?php
$json_str = file_get_contents('php://input');
$json_obj = json_decode($json_str);

$username = $json_obj->{'username'};
$password = $json_obj->{'password'};

require_once "DbOperation.php";
$dbo = new DbOperation();

$result = $dbo->getUsers("zul", "1234");
$outp = array();
$outp['users'] = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($outp);
$result->free();
$conn->close();
?>
