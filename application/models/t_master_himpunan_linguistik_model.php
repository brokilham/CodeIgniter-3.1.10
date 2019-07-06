<?php defined('BASEPATH') OR exit('No direct script access allowed');
class t_master_himpunan_linguistik_model extends CI_Model
{
    private $_table = "t_master_himpunan_linguistik";
    public $Id;
    public $Value;
    public $Keterangan;
    public $IdLinguistik;
    public $Low;
    public $High;
    public $Up;
    
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
            'label' => 'IdLinguistik'],

            ['field' => 'Low',
            'label' => 'Low'],

            ['field' => 'High',
            'label' => 'High'],

            ['field' => 'Up',
            'label' => 'Up'],
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
        $this->db->where("Keterangan", "intensitas");
        return $this->db->get()->result();
        
        /*SELECT
                *
            FROM
                t_master_himpunan_linguistik
            WHERE
                Keterangan = 'intensitas'
        */     
    }

    
}