<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BobotKriteriaController extends CI_Controller {

	public function __construct()
    {
		parent::__construct();
		$this->load->database();  
		$this->load->model("t_master_kriteria_model");
		$this->load->model("t_nilai_kriteria_model");
		$this->load->model("t_master_himpunan_linguistik_model");		
    }

	public function index()
	{
		
		$data["nilai_kriterias"] = $this->t_nilai_kriteria_model->getAllOrderBy();
        $data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
		$data["data_total_matrixs"] = $this->t_nilai_kriteria_model->getCountMatrix();
		
		$this->load->view('bobotKriteria/main.php',$data);
	}


	public function edit()
	{
		$data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
		$data["mstr_skala_tfns"] = $this->t_master_himpunan_linguistik_model->getAllHimpunanLinguistik();
		$data["data_nilai_kriterias"] = $this->t_nilai_kriteria_model->getDataNilaiKriteria();
		$data["nilai_kriterias"] = $this->t_nilai_kriteria_model->getAllOrderBy();
		
		$this->load->view('bobotKriteria/edit.php',$data);
	}


	public function edit2()
	{
		$data["mstr_skala_tfns"] = $this->t_master_himpunan_linguistik_model->getAllTFN();
		$data["data_nilai_kriterias"] = $this->t_nilai_kriteria_model->getDataNilaiKriteria();
		$data["jumlah_data_kriteria"] = $this->t_master_kriteria_model->getCount();
		
		

		$this->load->view('bobotKriteria/edit2.php',$data);
	}
}
