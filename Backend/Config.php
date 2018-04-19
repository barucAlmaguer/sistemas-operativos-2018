<?php
$url = parse_url(getenv("CLEARDB_DATABASE_URL"));

$db_host = $url["host"];
$db_username = $url["user"];
$db_password = $url["pass"];
$db_name = substr($url["path"], 1);
?>
