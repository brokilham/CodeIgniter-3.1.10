<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MstrKriteriaController extends CI_Controller {


	public function __construct()
    {
		parent::__construct();
		$this->load->database();  
		$this->load->model("t_master_kriteria_model");
		$this->load->library('form_validation');
		
    }
	public function index()
	{
		$data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
        $this->load->view('MstrKriteria/main',$data);
	}

	public function add()
	{
				
		$t_master_kriteria = $this->t_master_kriteria_model;
		$validation = $this->form_validation;
        $validation->set_rules($t_master_kriteria->rules());

        if ($validation->run()) {
			$t_master_kriteria->save();	
			redirect(site_url('MstrKriteria'));		
		}

		$data["last_id"] = $this->t_master_kriteria_model->getMaxId();
		$this->load->view('MstrKriteria/add',$data);
		
	}

	public function edit($id = null)
	{
		if (!isset($id)) redirect('MstrKriteria');
       
        $t_master_kriteria = $this->t_master_kriteria_model;
        $validation = $this->form_validation;
        $validation->set_rules($t_master_kriteria->rules());

        if ($validation->run()) {
            $t_master_kriteria->update();
            redirect(site_url('MstrKriteria'));		
        }

        $data["mstr_kriteria"] = $t_master_kriteria->getById($id);
        if (!$data["mstr_kriteria"]) show_404();
        
        $this->load->view("MstrKriteria/edit", $data);
	    //$this->load->view('MstrKriteria/edit');
	}

	public function delete($id = null)
	{
		if (!isset($id)) show_404();
			
			if ($this->t_master_kriteria_model->delete($id)) {

				redirect(site_url('MstrKriteria'));
			}

	}
}
