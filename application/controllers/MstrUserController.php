<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MstrUserController extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        
        if($this->session->userdata('status') != "login"){
			redirect(base_url("Login"));
        }
        
        $this->load->model("t_user_model");	
        $this->load->library('form_validation');	
                
    }

    public function index()
	{   
        $data["mstr_users"] = $this->t_user_model->getAll();
        $this->load->view('MstrUser/main',$data);
    }
    
    public function add()
    {
        $t_user_model = $this->t_user_model;
		$validation = $this->form_validation;
        $validation->set_rules($t_user_model->rules());

        if ($validation->run()) {
			$t_user_model->save();	
			redirect(site_url('MstrUser'));		
		}

		//$data["last_id"] = $this->t_user_model->getMaxId();
        //$this->load->view('MstrUser/add',$data);
        $this->load->view('MstrUser/add');

    }


    public function edit($id = null)
    {
        if (!isset($id)) redirect('MstrUser');
       
        $t_user = $this->t_user_model;
        $validation = $this->form_validation;
        $validation->set_rules($t_user->rulesEdit());

        if ($validation->run()) {
            $t_user->update();
            redirect(site_url('MstrUser'));		
        }

        $data["mstr_user"] = $t_user->getById($id);
        if (!$data["mstr_user"]) show_404();
        
        $this->load->view("MstrUser/edit", $data);
	    //$this->load->view('MstrKriteria/edit');

    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();
			
        if ($this->t_user_model->delete($id)) {

            redirect(site_url('MstrUser'));
        }
    }

}