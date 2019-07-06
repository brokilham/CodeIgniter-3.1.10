<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MstrAlternatifController extends CI_Controller {

	public function __construct()
    {
		parent::__construct();
		$this->load->database();  
		$this->load->model("t_master_alternatif_model");
		$this->load->library('form_validation');
    }


	public function index()
	{   $data["mstr_alternatifs"] = $this->t_master_alternatif_model->getAll();
        $this->load->view('MstrAlternatif/main',$data);
	}

	public function add()
	{
		$t_master_alternatif = $this->t_master_alternatif_model;
		$validation = $this->form_validation;
        $validation->set_rules($t_master_alternatif->rules());

        if ($validation->run()) {
			$t_master_alternatif->save();	
			redirect(site_url('MstrAlternatif'));		
		}

		$data["last_id"] = $this->t_master_alternatif_model->getMaxId();
		$this->load->view('MstrAlternatif/add',$data);
	}

	public function edit($id = null)
	{
		if (!isset($id)) redirect('MstrAlternatif');
       
        $t_master_alternatif = $this->t_master_alternatif_model;
        $validation = $this->form_validation;
        $validation->set_rules($t_master_alternatif->rules());

        if ($validation->run()) {
            $t_master_alternatif->update();
            redirect(site_url('MstrAlternatif'));		
        }

        $data["mstr_alternatif"] = $t_master_alternatif->getById($id);
        if (!$data["mstr_alternatif"]) show_404();
        
        $this->load->view("MstrAlternatif/edit", $data);
	}

	public function delete($id = null)
	{
		if (!isset($id)) show_404();
			
			if ($this->t_master_alternatif_model->delete($id)) {

				redirect(site_url('MstrAlternatif'));
			}

	}
}
