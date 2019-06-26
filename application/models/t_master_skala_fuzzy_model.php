<?php defined('BASEPATH') OR exit('No direct script access allowed');
class t_master_skala_fuzzy_model extends CI_Model
{
    private $_table = "t_master_skala_fuzzy";
    public $Id;
    public $Value;
    public $Keterangan;
    public $IdLinguistik;
    
    public function rules()
    {
        return [
            ['field' => 'Id',
            'label' => 'Id',
            'rules' => 'required'],

            ['field' => 'Value',
            'label' => 'Value'],

            ['field' => 'Keterangan',
            'label' => 'Keterangan'],

            ['field' => 'IdLinguistik',
            'label' => 'IdLinguistik']
        ];
    }

    public function getAllHimpunanLinguistik()
    {
        return $this->db->get('t_master_himpunan_linguistik')->result();
        
        /*SELECT Deskripsi FROM t_master_himpunan_linguistik*/     
    }

    public function getAllTFN()
    {
        $this->db->select("*");
        $this->db->from($this->_table);
        $this->db->join("t_master_himpunan_linguistik", "t_master_skala_fuzzy.IdLinguistik = t_master_himpunan_linguistik.id", "left");
        $this->db->where("Keterangan", "TFN");
        return $this->db->get()->result();
        
        /*SELECT
            *
        FROM
            t_master_skala_fuzzy
        LEFT JOIN t_master_himpunan_linguistik ON t_master_skala_fuzzy.IdLinguistik = t_master_himpunan_linguistik.id
        WHERE
            Keterangan = 'TFN'
        */     
    }

    
}