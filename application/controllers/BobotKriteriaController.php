<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BobotKriteriaController extends CI_Controller {

	public function __construct()
    {
		parent::__construct();
		$this->load->database();  
		$this->load->model("t_master_kriteria_model");
		$this->load->model("t_nilai_kriteria_model");
		$this->load->model("t_master_skala_fuzzy_model");		
    }

	public function index()
	{
		
		$data["nilai_kriterias"] = $this->t_nilai_kriteria_model->getAllOrderBy();
        $data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
        $data["nilai_kriterias_tfn"] = $this->t_nilai_kriteria_model->getAllOrderByTfn();
		$this->load->view('bobotKriteria/main.php',$data);
	}


	public function edit()
	{
		$data["mstr_skala_tfns"] = $this->t_master_skala_fuzzy_model->getAllTFN();
		$data["data_nilai_kriterias"] = $this->t_nilai_kriteria_model->getDataNilaiKriteria();
		$this->load->view('bobotKriteria/edit.php',$data);
	}
}
