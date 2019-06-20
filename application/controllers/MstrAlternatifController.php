<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MstrAlternatifController extends CI_Controller {

	public function __construct()
    {
		parent::__construct();
		$this->load->database();  
        $this->load->model("t_master_alternatif_model");
    }


	public function main()
	{   $data["mstr_alternatifs"] = $this->t_master_alternatif_model->getAll();
        $this->load->view('MstrAlternatif/main',$data);
	}
}
