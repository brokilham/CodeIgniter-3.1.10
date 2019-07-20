<?php defined('BASEPATH') OR exit('No direct script access allowed');
class t_nilai_alternatif_model extends CI_Model
{
    private $_table = "t_nilai_alternatif";
    public $id;
    public $IdKriteria;
    public $IdAlternatif;
    public $IdAlternatif2;
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

            ['field' => 'IdAlternatif2',
            'label' => 'IdAlternatif2',
            'rules' => 'required'],


            ['field' => 'pencapaian',
            'label' => 'pencapaian',
            'rules' => 'required']
        ];
    }


    public function getJumlahKolom()
    {
        $this->db->select('IdKriteria, IdAlternatif2, SUM(NilaiBobot) AS Jumlah ');
        $this->db->from($this->_table);
        $this->db->group_by('IdKriteria');
        $this->db->group_by('IdAlternatif2');
        return $this->db->get()->result();

        //SELECT IdKriteria, IdAlternatif, SUM(NilaiBobot) AS Jumlah FROM t_nilai_alternatif GROUP BY IdKriteria,IdAlternatif
    }

    public function getAllOrderByAlternatif()
    {
        $this->db->from($this->_table);
        $this->db->order_by("IdKriteria","asc");
        $this->db->order_by("IdAlternatif","asc");
        $this->db->order_by("IdAlternatif2","asc");
        return $this->db->get()->result();

        //SELECT * FROM t_nilai_alternatif  ORDER BY IdKriteria,IdAlternatif,IdAlternatif2,
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