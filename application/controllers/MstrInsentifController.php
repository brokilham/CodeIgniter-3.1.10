<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MstrInsentifController extends CI_Controller {


	public function __construct()
    {
		parent::__construct();
		$this->load->database();  
		$this->load->model("t_master_kriteria_model");
		$this->load->model("t_nilai_kriteria_model");
		$this->load->model("t_master_insentif_model");
		$this->load->library('form_validation');
		
    }
	public function index()
	{
		$data["mstr_insentifs"] = $this->t_master_insentif_model->getAll();
        $this->load->view('MstrKriteria/main',$data);
	}

	// versi 1 tanpa menyimpan nilai perbandingan kriteria
	/*public function add()
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
		
	}*/



	public function add()
	{
				
		$t_master_kriteria = $this->t_master_kriteria_model;
		$t_nilai_kriteria = $this->t_nilai_kriteria_model;
		
		$validation = $this->form_validation;
        $validation->set_rules($t_master_kriteria->rules());

        if ($validation->run()) {
			$t_master_kriteria->save();	
				
			foreach($this->t_master_kriteria_model->getAll() as $kriteria2)
			{
				$t_nilai_kriteria->save($t_master_kriteria->Id,$kriteria2->Id,'5');
			}

			foreach($this->t_master_kriteria_model->getAll() as $kriteria2)
			{
				if($t_master_kriteria->Id != $kriteria2->Id)
				{
					$t_nilai_kriteria->save($kriteria2->Id,$t_master_kriteria->Id,'5');
				}	
			}
			
			redirect(site_url('MstrKriteria'));		
		}
		else
		{
			$data["last_id"] = $this->t_master_kriteria_model->getMaxId();
			$this->load->view('MstrKriteria/add',$data);
		}		
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
