<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MstrSkalaFuzzyController extends CI_Controller {


	public function __construct()
    {
		parent::__construct();
		
		//$this->load->database(); 
		if($this->session->userdata('status') != "login"){
			redirect(base_url("Login"));
		}
	 
		$this->load->model("t_master_skala_fuzzy_model");
		
    }
	public function main()
	{
		$data["mstr_skala_fuzzys"] = $this->t_master_skala_fuzzy_model->getAll();
        $this->load->view('MstrSkalaFuzzy/main',$data);
	}
}
