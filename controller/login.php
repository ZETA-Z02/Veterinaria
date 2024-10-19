<?php

class Login extends Controller
{

	function __construct()
	{
		parent::__construct();
	}

	function render()
	{
		$this->view->Render('login/index');
	}
	public function user(){
		$username = $_POST['usuario'];
		$password = $_POST['password'];
		$data = $this->model->User($username,$password);
		if($data['username']==$username && $data['passwd']==$password){
			$_SESSION['katari'] = 'ingreso';
			header("Location:".constant('URL')."dashboard/render");
		}else{
			$this->render();
		}
	}
}