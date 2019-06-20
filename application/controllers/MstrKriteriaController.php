<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MstrKriteriaController extends CI_Controller {


	public function __construct()
    {
		parent::__construct();
		$this->load->database();  
		$this->load->model("t_master_kriteria_model");
		
    }
	public function main()
	{
		$data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
        $this->load->view('MstrKriteria/main',$data);
	}
}
