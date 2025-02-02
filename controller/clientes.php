<?php 
class Clientes extends Controller{
    function __construct(){
        parent::__construct();
    }
    function render(){
        $this->view->render('clientes/index');
    }
    function detalles($nparam=null){
        $id = $nparam[0];
        $this->view->data = $this->model->Detalles($id);
        $this->view->render('clientes/detalles');
    }
    public function get(){
        $data = $this->model->Get();
        while($row = mysqli_fetch_array($data)){
            $json[] = array(
                'id' => $row['idcliente'],
                'nombre' => $row['nombre'].' '.$row['apellido'],
                'telefono' => $row['telefono'],
            );
        }
        echo json_encode($json);
    }
    public function getMascotas(){
        $id = $_POST['id'];
        $data = $this->model->GetMascotas($id);
        while ($row = mysqli_fetch_assoc($data)){
            $json[] = array(
                "nombre" => $row['nombre'],
                "especie" => $row['especie'],
                "raza" => $row['raza']
            );
        }
        echo json_encode($json);
    }
}