<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MstrAlternatifController extends CI_Controller {

	public function __construct()
    {
		parent::__construct();
		//$this->load->database();  
		$this->load->model("t_master_alternatif_model");
		$this->load->model("t_master_kriteria_model");
		$this->load->model("t_nilai_alternatif_model");
		$this->load->library('form_validation');
    }


	public function index()
	{   $data["mstr_alternatifs"] = $this->t_master_alternatif_model->getAll();
        $this->load->view('MstrAlternatif/main',$data);
	}


	public function add()
	{
		$data["last_id"] = $this->t_master_alternatif_model->getMaxId();
		$this->load->view('MstrAlternatif/add',$data);
	}

	public function add_action()
	{
		
		/*$id_alternatif   = $this->input->post('Id');
		$desc_alternatif = $this->input->post('Description');
		
		$this->t_master_alternatif_model->save($id_alternatif,$desc_alternatif);
		
		$jum_mstr_kriteria   = $this->t_master_kriteria_model->getCount();
		$jum_mstr_alternatif = $this->t_master_alternatif_model->getCount();

		$total_loop = $jum_mstr_kriteria[0]->count_data*$jum_mstr_alternatif[0]->count_data;
	
		$idKriteria = $this->t_master_kriteria_model->getMaxId();
 
		// begin section add new master alternatif
		$idx_kriteria = 1;
		$idx_alternatif2 = 1;
		for($i = 0; $i<$total_loop; $i++){
			
			$this->t_nilai_alternatif_model->save($id_alternatif,$idx_alternatif2,$idx_kriteria);
			$idx_kriteria++;
			if($idx_kriteria>$idKriteria[0]->Id)
			{
				$idx_kriteria = 1;
				$idx_alternatif2++;
			};
		
		}
		// end section add new master alternatif
		*/

		$id_alternatif   = $this->input->post('Id');
		$desc_alternatif = $this->input->post('Description');
		
		$this->t_master_alternatif_model->save($id_alternatif,$desc_alternatif);
		
		$jum_mstr_kriteria   = $this->t_master_kriteria_model->getCount();
		$jum_mstr_alternatif = $this->t_master_alternatif_model->getCount();

		$total_loop = $jum_mstr_kriteria[0]->count_data*$jum_mstr_alternatif[0]->count_data;
	
		$idKriteria = $this->t_master_kriteria_model->getMaxId();
 
		// begin section add new master alternatif
		$idx_kriteria = 1;
		$idx_alternatif2 = 1;
		for($i = 0; $i<$total_loop; $i++){
			
			$this->t_nilai_alternatif_model->save($id_alternatif,$idx_alternatif2,$idx_kriteria);
			$idx_kriteria++;
			if($idx_kriteria>$idKriteria[0]->Id)
			{
				$idx_kriteria = 1;
				$idx_alternatif2++;
			};
		
		}
		// end section add new master alternatif

		// begin alternatif 2 for old data
	  
		// dicek untuk menjalankan segment ini perlu dipastikan bahwa data alternatif lebih dari 1
		$total_loop_old = $jum_mstr_kriteria[0]->count_data*($jum_mstr_alternatif[0]->count_data-1);
		$idx_kriteria_old = 1;
		$idx_alternatif  = 1;
		for($i = 0; $i<$total_loop_old; $i++)
		{
			$this->t_nilai_alternatif_model->save($idx_alternatif,$id_alternatif,$idx_kriteria_old);
			$idx_kriteria_old++;
			if($idx_kriteria_old>$idKriteria[0]->Id)
			{
				$idx_kriteria_old = 1;
				$idx_alternatif++;
			}
		
		}

		$data["last_id"] = $this->t_master_alternatif_model->getMaxId();
		$this->load->view('MstrAlternatif/add',$data);
		// end alternatif 2 for old data

		/*$t_master_alternatif = $this->t_master_alternatif_model;
		$validation = $this->form_validation;
        $validation->set_rules($t_master_alternatif->rules());

        if ($validation->run()) {
			$t_master_alternatif->save();	
			redirect(site_url('MstrAlternatif'));		
		}

		$data["last_id"] = $this->t_master_alternatif_model->getMaxId();
		$this->load->view('MstrAlternatif/add',$data);*/
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
