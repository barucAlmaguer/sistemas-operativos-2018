<?php
$json_str = file_get_contents('php://input');
$json_obj = json_decode($json_str);


$url = parse_url(getenv("CLEARDB_DATABASE_URL"));

$server = $url["host"];
$username = $url["user"];
$password = $url["pass"];
$db = substr($url["path"], 1);

$conn = new mysqli($server, $username, $password, $db);

$sql = "SELECT * FROM USUARIOS WHERE username = '".$json_obj->{'username'}."'";
$result = $conn->query($sql);
$outp = $result->fetch_all(MYSQLI_ASSOC);
echo json_encode($outp) ;
$conn->close();
?>
