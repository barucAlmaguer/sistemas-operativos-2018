<?php

class DbOperation{
    private $conn;
    function __construct(){
        require_once "DbConnect.php";
        $db = new DbConnect();
        $this->conn = $db->connect();
    }

    function getUsers($username, $password){
      $sql = "SELECT * FROM USUARIOS WHERE username = ? AND password = ?";
      $stmt = $this->conn->prepare($sql);
      $stmt->bind_param("ss", $username, $password);
      $stmt->execute();
      $result = $stmt->get_result();
      return  $result;
    }

    function getMaterias($semestre){
      $sql = "SELECT materias.clave, materias.semestre, materias.nombre, materias2.nombre AS requiere
              FROM materias LEFT JOIN materias AS materias2 ON materias.requires = materias2.clave
              WHERE materias.semestre = ?";
      $stmt = $this->conn->prepare($sql);
      $stmt->bind_param("s", $semestre);
      $stmt->execute();
      $result = $stmt->get_result();
      return  $result;
    }

    function getCursos($materia){
      $sql = "SELECT * FROM CURSOS;";
      $stmt = $this->conn->prepare($sql);
      $stmt->execute();
      $result = $stmt->get_result();
      return  $result;
    }
}

?>
