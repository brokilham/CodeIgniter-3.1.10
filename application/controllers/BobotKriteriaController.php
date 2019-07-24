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
		$this->load->model("t_nilai_kriteria_tfn_model");	
			
    }

	public function index()
	{
		
		$data["nilai_kriterias"] = $this->t_nilai_kriteria_model->getAllOrderBy();
        $data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
		$data["data_total_matrixs"] = $this->t_nilai_kriteria_model->getCountMatrix();
		
		$this->load->view('bobotKriteria/main.php',$data);
	}

    // untuk menampilkan form edit
	public function edit()
	{
		$data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
		$data["mstr_skala_tfns"] = $this->t_master_himpunan_linguistik_model->getAllHimpunanLinguistik();
		$data["data_nilai_kriterias"] = $this->t_nilai_kriteria_model->getDataNilaiKriteria();
		$data["nilai_kriterias"] = $this->t_nilai_kriteria_model->getAllOrderBy();
		
		$this->load->view('bobotKriteria/edit.php',$data);
	}

	public function edit_action() {
		$id_kriteria1   = $this->input->post('slc_kriteria1');
		$id_kriteria2   = $this->input->post('slc_kriteria2');
		$value_kriteria = $this->input->post('slc_hirarki');
		
		// begin section update kriteria
		if(($id_kriteria1 != null) && ($id_kriteria2 != null) && ($value_kriteria != null)){
			$data_nilai_kriteria = $this->t_nilai_kriteria_model->getDataByIdKriteria($id_kriteria1,$id_kriteria2);
			if($data_nilai_kriteria)
			{
				$this->t_nilai_kriteria_model->update($data_nilai_kriteria->Id,$id_kriteria1,$id_kriteria2,$value_kriteria);
				
				// begin of edit tfn


				$data_nilai_kriteria_tfn = $this->t_nilai_kriteria_tfn_model->getDataByIdKriteria($id_kriteria1,$id_kriteria2);
				//echo $data_nilai_kriteria_tfn->NilaiBobotKriteria."-".$data_nilai_kriteria_tfn->IdKriteria1."-".$data_nilai_kriteria_tfn->IdKriteria2."-".'L'."-".$data_nilai_kriteria_tfn->Low;
				
				$data_nilai_kriteria_tfn1 = $this->t_nilai_kriteria_tfn_model->getbyId($id_kriteria1,$id_kriteria2);
				$tfn_value = null;
				foreach($data_nilai_kriteria_tfn1 as $item)
				{
					if($item->Tfn == "L")
					{ // L
						$tfn_value =  $data_nilai_kriteria_tfn->Low;
					}
					else if($item->Tfn == "M")
					{ // M
						$tfn_value = $data_nilai_kriteria_tfn->Medium;
					}
					else 
					{ //U 
						$tfn_value =  $data_nilai_kriteria_tfn->Up;
					}
					$this->t_nilai_kriteria_tfn_model->update($item->Id, $item->IdKriteria1,$item->IdKriteria2,$item->Tfn,$tfn_value);

				}
				// end of edit tfn
							
				redirect(site_url('BobotKriteria/edit'));	
				
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

	
	


	public function edit2()
	{
		$data["mstr_skala_tfns"] = $this->t_master_himpunan_linguistik_model->getAllTFN();
		$data["data_nilai_kriterias"] = $this->t_nilai_kriteria_model->getDataNilaiKriteria();
		$data["jumlah_data_kriteria"] = $this->t_master_kriteria_model->getCount();
		
		$this->load->view('bobotKriteria/edit2.php',$data);
	}
}
