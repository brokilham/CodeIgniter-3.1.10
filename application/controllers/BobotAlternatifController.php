<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BobotAlternatifController extends CI_Controller {

	public function __construct()
    {
		parent::__construct();
		$this->load->database();  
		$this->load->model("t_nilai_alternatif_model");
		$this->load->model("t_master_alternatif_model");
		$this->load->model("t_master_kriteria_model");
				
    }

	public function index()
	{
		
		$data["nilai_alternatifs"] = $this->t_nilai_alternatif_model->getAllOrderBy();
        $data["mstr_alternatifs"] = $this->t_master_alternatif_model->getAll();
		$data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
		$data["nilai_bobot_alternatifs"] = $this->t_nilai_alternatif_model->getNilaiBobotAlternatif();
		
		$this->load->view('bobotAlternatif/main.php',$data);
	}

	public function edit()
	{
		$this->load->view('bobotAlternatif/edit.php');
	}


	
}
