<?php 
class LoginModel extends Model{
    function __construct(){
        parent::__construct();
    }
    public function User($usuario,$password){
        $sql = "SELECT usuario,password FROM login WHERE usuario='$usuario' AND password='$password';";
        $data = $this->conn->ConsultaArray($sql);
        return $data;
    }
}
