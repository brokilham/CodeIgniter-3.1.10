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

	public function add_form()
	{
	    $this->load->view('MstrAlternatif/add');
	}

	public function add_action()
	{


	}

	public function edit_form()
	{
	    $this->load->view('MstrAlternatif/edit');
	}

	public function edit_action()
	{


	}

	public function delete_action()
	{


	}
}
