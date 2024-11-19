<?php 
class PersonalModel extends Model{
    function __construct(){
        parent::__construct();
    }
    public function Create($dni,$nombre,$apellido,$telefono,$direccion,$usuario,$password){
        $this->conn->conn->begin_transaction();
        try{
            $personal = "INSERT INTO personal VALUES (null,'$nombre','$apellido','$dni','$telefono','$direccion');";
            $responsePersonal = $this->conn->ConsultaSin($personal);
            $id = $this->conn->conn->insert_id;
            $login = "INSERT INTO login (idpersonal,usuario,password) VALUES ('$id','$usuario','$password');";
            $responseLogin = $this->conn->ConsultaSin($login);
            $this->conn->conn->commit();
            return $responseLogin;
        }
        catch(Exception $e){
            $this->conn->conn->rollback();
            echo $e->getMessage();
        }
        $this->conn->conn->close();
    }
    public function Get(){
        $sql = "SELECT * FROM personal";
        $data = $this->conn->ConsultaCon($sql);
        return $data;
    }
    public function Detalles($id){
        $sql = "SELECT * FROM personal WHERE idpersonal='$id';";
        $data = $this->conn->ConsultaArray($sql);
        return $data;
    }
    public function Login($id){
        $sql = "SELECT * FROM login WHERE idpersonal='$id';";
        $data = $this->conn->ConsultaArray($sql);
        return $data;
    }
    public function Update($id,$telefono,$direccion){
        $sql = "UPDATE personal SET telefono='$telefono',direccion='$direccion' WHERE idpersonal='$id';";
        $response = $this->conn->ConsultaSin($sql);
        return $response;
    }
    public function UpdateLogin($id,$usuario,$password,$nivel,$estado){
        $sql = "UPDATE login SET usuario='$usuario',password='$password',nivel='$nivel',estado='$estado' WHERE idpersonal='$id';";
        $response = $this->conn->ConsultaSin($sql);
        return $response;
    }
    public function Delete($id){
        try{
            $deletelogin = "DELETE FROM login WHERE idpersonal='$id';";
            $sql = "DELETE FROM personal WHERE idpersonal='$id';";
            $response = $this->conn->ConsultaSin($deletelogin);
            $response = $this->conn->ConsultaSin($sql);
            return $response;
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }
}
