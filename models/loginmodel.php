<?php 
class LoginModel extends Model{
    function __construct(){
        parent::__construct();
    }
    public function User($usuario,$password){
        $sql = "SELECT username,passwd FROM login WHERE username='$usuario' AND passwd='$password';";
        $data = $this->conn->ConsultaArray($sql);
        return $data;
    }
}