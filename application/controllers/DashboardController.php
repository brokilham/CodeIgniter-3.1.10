<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DashboardController extends CI_Controller {

	public function __construct()
    {
		parent::__construct();
		$this->load->database();  
		$this->load->model("t_master_skala_fuzzy_model");
		$this->load->model("t_master_kriteria_model");	
		$this->load->model("t_master_alternatif_model");			
    }

	public function index()
	{   
		$data["data_fuzzys"] = $this->t_master_skala_fuzzy_model->getAllHimpunanLinguistik();	
		$data["data_kriterias"] = $this->t_master_kriteria_model->getAll();	
		$data["data_alternatifs"] = $this->t_master_alternatif_model->getAll();	
		
		$this->load->view('dashboard/main.php',$data);
	}
}
