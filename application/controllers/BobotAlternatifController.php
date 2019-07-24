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
		$this->load->model("t_master_himpunan_linguistik_model");				
    }

	public function index()
	{
		$data["nilai_alternatifs"] = $this->t_nilai_alternatif_model->getAllOrderByAlternatif();
        $data["mstr_alternatifs"] = $this->t_master_alternatif_model->getAll();
		$data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
		//$data["nilai_bobot_alternatifs"] = $this->t_nilai_alternatif_model->getNilaiBobotAlternatif();
		
		$this->load->view('bobotAlternatif/main.php',$data);
	}

	public function edit($idKriteria,$descKriteria)
	{
		$data["mstr_skala_tfns"] = $this->t_master_himpunan_linguistik_model->getAllKebalikan();
		$data["mstr_alternatifs"] = $this->t_master_alternatif_model->getAll();
		$data["nilai_alternatifs"] = $this->t_nilai_alternatif_model->getAllOrderByAlternatifWithIdKriteria($idKriteria);
		$data["descKriteria"] = $descKriteria;
		$data["idKriteria"] = $idKriteria;
		$this->load->view('bobotAlternatif/edit.php',$data);
	}


	public function edit_action() 
	{
		$id_alternatif1   = $this->input->post('slc_alternatif1');
		$id_alternatif2   = $this->input->post('slc_alternatif2');
		$id_kriteria      = $this->input->post('txt_kriteria');
		$descKriteria = $this->input->post('txt_descKriteria');
		$value_himpunan = $this->input->post('slc_himpunan');
		
		// begin section update kriteria
		if(($id_alternatif1 != null) && ($id_alternatif2 != null) && ($value_himpunan != null) && ($id_kriteria != null)){
			$data_nilai_alternatif = $this->t_nilai_alternatif_model->getDataByIdAlternatif($id_alternatif1,$id_alternatif2,$id_kriteria);
			if($data_nilai_alternatif)
			{
				if($data_nilai_alternatif->Id!=null)
				{
					$this->t_nilai_alternatif_model->update($data_nilai_alternatif->Id,$id_alternatif1,$id_alternatif2,$id_kriteria,$data_nilai_alternatif->Pencapaian,$data_nilai_alternatif->NilaiPencapaian,$value_himpunan);
					redirect(site_url('BobotAlternatif/edit/'.$id_kriteria."/".$descKriteria));	
					//echo "ada data";
				}
				else
				{
					echo "Id nilai alternatif gagal didapatkan";
				}
	
			}
			else
			{
				echo "tidak ada data";
			}
		}
		else{
			echo  "parameter kurang";
		}
	}


	
}
