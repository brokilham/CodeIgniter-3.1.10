<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PerhitunganHasilController extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        
        /*if($this->session->userdata('status') != "login"){
			redirect(base_url("Login"));
        }*/
        $this->load->model("t_master_kriteria_model");
        $this->load->model("t_master_alternatif_model");
        $this->load->model("t_nilai_alternatif_model");   
    }

    public function main()
    {
        $data["nilai_alternatifs"] = $this->t_nilai_alternatif_model->getAllOrderByAlternatif();
        $data["mstr_alternatifs"] = $this->t_master_alternatif_model->getAll();
        $data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
        $data["jum_kolom"] = $this->t_nilai_alternatif_model-> getJumlahKolom();
       
        $this->load->view('PerhitunganHasil/main',$data);    
    } 

    

}