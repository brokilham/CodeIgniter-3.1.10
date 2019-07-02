<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LoginController extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        //$this->load->database(); 
		$this->load->model("t_user_model");			
    }

	public function index()
	{         
        $this->load->view('login.php');
    }
    
    public function loginAction()
    {

        $username = $this->input->post('username');
        $password = $this->input->post('password');
  
        $cek = $this->t_user_model->getUser($username,$password);
        if($cek > 0){
            $data_session = array('nama' => $username,'status' => "login");
            $this->session->set_userdata($data_session);
            redirect(base_url("/"));
        }else{
            echo "Username dan password salah !";
        }
    }

    function logout(){
		$this->session->sess_destroy();
		redirect(base_url('Login'));
	}
}
