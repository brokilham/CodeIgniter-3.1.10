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

    //public function main($listKriteria,$listWlokal)
    public function main($listAlternatif,$listWlocal)
    {
        //$data["nilai_alternatifs"] = $this->t_nilai_alternatif_model->getAllOrderByAlternatif();
        //$data["mstr_alternatifs"] = $this->t_master_alternatif_model->getAll();
        $listIdAlternatif = explode("_",str_replace('%20', '', $listAlternatif));
        $data["nilai_alternatifs"] = $this->t_nilai_alternatif_model->getAllOrderByAlternatifWithCondition($listIdAlternatif);
        $data["mstr_alternatifs"] = $this->t_master_alternatif_model->getWhereIn($listIdAlternatif);
        $data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
        $data["jum_kolom"] = $this->t_nilai_alternatif_model->getJumlahKolomWithCondition($listIdAlternatif);
        $data["mstr_kriterias"] = $this->t_master_kriteria_model->getAll();
        $data["dataWLocals"] = explode("_",$listWlocal);
        $data["listIdAlternatif"] = $listIdAlternatif;
       
        $this->load->view('PerhitunganHasil/main',$data);    
    } 


    public function setData()
    {
        

        //SELECT * FROM t_master_kriteria where Id in (1,2)
        //kriteria ini harusnya list alternatif
        /*$kriteriaArray = $this->input->post('SelectedKriteria');
        $selectedKriteria = "";
        for($i = 0; $i < count($kriteriaArray); $i++)
        {
            $selectedKriteria .= ($selectedKriteria != "")? "_".$kriteriaArray[$i] : $kriteriaArray[$i];
           
        }*/

        $AlternatifValueList = $this->input->post('SelectedKriteria');
        $selectedAlternatif = implode("_",$AlternatifValueList);


        $wLocalValueList = $this->input->post('WlocalValue');
        $valueWlocal = implode("_",$wLocalValueList);
      
        

        $data = array(
            'value_alternatif' => $AlternatifValueList,
            'value_w_local' => $wLocalValueList,
            'url' => base_url()."PerhitunganHasil/".$selectedAlternatif."/".$valueWlocal,    
        );

        echo json_encode($data);
    
    }

    

}