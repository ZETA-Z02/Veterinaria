<?php 
class ClientesModel extends Model{
    function __construct(){
        parent::__construct();
    }
    public function Get(){
        $sql = "SELECT * FROM cliente";
        $data = $this->conn->ConsultaCon($sql);
        return $data;
    }
    public function Detalles($id){
        $sql = "SELECT * FROM cliente WHERE idcliente='$id';";
        $data = $this->conn->ConsultaArray($sql);
        return $data;
    }
    public function GetMascotas($id){
        $sql = "SELECT * FROM mascota WHERE idcliente = '$id';";
        $data = $this->conn->ConsultaCon($sql);
        return $data;
    }
}
