<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PerhitunganController extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        
        /*if($this->session->userdata('status') != "login"){
			redirect(base_url("Login"));
        }
        
        $this->load->model("t_user_model");	
        $this->load->library('form_validation');*/	

        $this->load->model("t_master_alternatif_model");
        $this->load->model("t_master_kriteria_model");      
        $this->load->model("t_nilai_kriteria_tfn_model");  
        $this->load->model("t_nilai_kriteria_model");
        $this->load->model("view_nilai_sintesis_model");           
    }

    public function main()
    {

        //begin of alernatif section;
        $data["mstr_alternatifs"] = $this->t_master_alternatif_model->getAll();
        //end of alternatif section

        //begin of kriteria section        
        $data["nilai_kriterias"] = $this->t_nilai_kriteria_model->getAllOrderBy();
        $data["kriteria_nilai_tfns"] = $this->t_nilai_kriteria_tfn_model->getAllOrderByTfn();
        $data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
        $data["jumlah_data_kriteria"] = $this->t_master_kriteria_model->getCount();
        $data["data_jumlah_baris_tfn"] = $this->t_nilai_kriteria_tfn_model->getJumlahBarisTfn();
        $data["jumlah_tfn"] = $this->t_nilai_kriteria_tfn_model->getJumlahTfn();
        //end of kriteria section

        //begin elemen tfn
        $data["jumlah_elemen"] = $this->t_nilai_kriteria_tfn_model->getElemen();
        //end elemen tfn

        $data["nilai_sintetis"] = $this->view_nilai_sintesis_model->getall();
        
       
        $this->load->view('Perhitungan/main',$data);       
    } 
}