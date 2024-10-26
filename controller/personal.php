<?php 
class Personal extends Controller{
    function __construct(){
        parent::__construct();
    }
    function render(){
        $this->view->render('personal/index');
    }
    function Detalles($nparam=null){
        $id = $nparam[0];
        $this->view->data = $this->model->Detalles($id);
        $this->view->render('personal/detalles');
    }
    function login($nparam=null){
        $id = $nparam[0];
        $this->view->data = $this->model->Login($id);
        $this->view->render('personal/login');
    }
    public function create(){
        $dni = $_POST['dni'];
        $nombre = $_POST['nombre'];
        $apellido = $_POST['apellidos'];
        $telefono = $_POST['telefono'];
        $direccion = $_POST['direccion'];
        $usuario = $_POST['usuario'];
        $password = $_POST['password'];
        if($this->model->Create($dni,$nombre,$apellido,$telefono,$direccion,$usuario,$password)){
            echo "SUCCESS POST";
        }else{
            echo "ERROR POST";
        }
    }
    public function get(){
        $data = $this->model->Get();
        while($row = mysqli_fetch_array($data)){
            $json[] = array(
                'id' => $row['idpersonal'],
                'nombre' => $row['nombre'].' '.$row['apellido'],
                'telefono' => $row['telefono'],
                'direccion' => $row['direccion']
            );
        }
        echo json_encode($json);
    }
    public function update(){
        $id = $_POST['id'];
        $telefono = $_POST['telefono'];
        $direccion = $_POST['direccion'];
        if($this->model->Update($id,$telefono,$direccion)){
            echo "SUCCESS PUT";
            $this->render();
        }else{
            echo "ERROR PUT";
        }
    }
    public function updateLogin(){
        $id = $_POST['id'];
        $usuario = $_POST['usuario'];
        $password = $_POST['password'];
        $nivel = $_POST['nivel'];
        $estado = $_POST['estado'];
        if($this->model->UpdateLogin($id,$usuario,$password,$nivel,$estado)){
            echo "SUCCESS PUT";
            $this->render();
        }else{
            echo "ERROR PUT";
        }
    }
    public function dni()
    {
        // Datos
        $token = 'apis-token-8574.bPsef4wHOYjVwA7bFoDMZqLLrNrAMKiY';
        $dni = $_POST["dni"];
        // Iniciar llamada a API
        $curl = curl_init();
        // Buscar dni
        curl_setopt_array(
            $curl,
            array(
                CURLOPT_URL => 'https://api.apis.net.pe/v2/reniec/dni?numero=' . $dni,
                CURLOPT_SSL_VERIFYPEER => 0,
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_SSL_VERIFYPEER => 0,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 2,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_CUSTOMREQUEST => 'GET',
                CURLOPT_HTTPHEADER => array(
                    'Referer: https://apis.net.pe/consulta-dni-api',
                    'Authorization: Bearer ' . $token
                ),
            )
        );
        $response = curl_exec($curl);
        if (curl_errno($curl)) {
            echo 'error del scraper: ' . curl_error($curl);
            exit;
        }
        curl_close($curl);
        // Datos listos para usar
        echo $response;


    }
}