<?php defined('BASEPATH') OR exit('No direct script access allowed');
class t_nilai_alternatif_model extends CI_Model
{
    private $_table = "t_nilai_alternatif";
    public $id;
    public $IdKriteria;
    public $IdAlternatif;
    public $pencapaian;
    public $NilaiPencapaian;
    public $NilaiBobot;
  

    public function rules()
    {
        return [
            ['field' => 'id',
            'label' => 'id',
            'rules' => 'required'],

            ['field' => 'IdKriteria',
            'label' => 'IdKriteria',
            'rules' => 'required'],

            ['field' => 'IdAlternatif',
            'label' => 'IdAlternatif',
            'rules' => 'required'],

            ['field' => 'pencapaian',
            'label' => 'pencapaian',
            'rules' => 'required']
        ];
    }

    public function getAllOrderBy()
    {
        $this->db->from($this->_table);
        $this->db->order_by("IdAlternatif","asc");
        $this->db->order_by("IdKriteria","asc");
        return $this->db->get()->result();
        //select * from t_nilai_alternatif order by IdAlternatif, IdKriteria
    }

    public function getNilaiBobotAlternatif()
    {
        $this->db->from($this->_table);
        $this->db->order_by("IdAlternatif","asc");
        $this->db->order_by("IdKriteria","asc");
        return $this->db->get()->result();
        //select * from t_nilai_kriteria order by IdKriteria1, IdKriteria2
    }

    public function save($IdKriteria1,$IdKriteria2,$IdTfn)
    {
        $this->IdKriteria = $IdKriteria;
        $this->IdAlternatif = $IdAlternatif;
        $this->pencapaian = $pencapaian;
        $this->db->insert($this->_table, $this);
    }

    

         
}