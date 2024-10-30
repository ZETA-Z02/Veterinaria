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
		$username = strtolower($_POST['usuario']);
		$password = strtolower($_POST['password']);
		$data = $this->model->User($username,$password);
		if($data['usuario']==$username && $data['password']==$password){
			$_SESSION['katari'] = 'ingreso';
			header("Location:".constant('URL')."dashboard");
		}else{
			$this->render();
		}
	}
	public function logout(){
		session_destroy();
		$_SESSION['katari'] = '';
		header("Location:".constant('URL'));
	}
}