<?php defined('BASEPATH') OR exit('No direct script access allowed');
class t_nilai_kriteria_model extends CI_Model
{
    private $_table = "t_nilai_kriteria";
    public $Id;
    public $IdKriteria1;
    public $IdKriteria2;
  

    public function rules()
    {
        return [
            ['field' => 'Id',
            'label' => 'Id',
            'rules' => 'required'],

            ['field' => 'IdKriteria1',
            'label' => 'IdKriteria1',
            'rules' => 'required'],

            ['field' => 'IdKriteria2',
            'label' => 'IdKriteria2',
            'rules' => 'required'],

            ['field' => 'IdTfn',
            'label' => 'IdTfn',
            'rules' => 'required']
        ];
    }

    public function save($IdKriteria1,$IdKriteria2,$IdTfn)
    {
        $this->IdKriteria1 = $IdKriteria1;
        $this->IdKriteria2 = $IdKriteria2;
        $this->IdTfn = $IdTfn;
        $this->db->insert($this->_table, $this);
    }

    public function getAllOrderBy()
    {
        $this->db->from($this->_table);
        $this->db->order_by("IdKriteria1","asc");
        $this->db->order_by("IdKriteria2","asc");
        return $this->db->get()->result();
        //select * from t_nilai_kriteria order by IdKriteria1, IdKriteria2
    }


    public function getDataNilaiKriteria()
    {
        // dari referensi https://stackoverflow.com/questions/55628778/write-query-with-subquery-in-codeigniter-query-builder

        // get_compiled_select mengembalikan quey tanpa mengeksekusinya
        // subquery
        $this->db->select('t_nilai_kriteria.Id, t_master_kriteria.Description AS Kriteria1,t_nilai_kriteria.IdKriteria2,t_nilai_kriteria.IdTfn');
        $this->db->from('t_nilai_kriteria');
        $this->db->join('t_master_kriteria', 't_nilai_kriteria.IdKriteria1 = t_master_kriteria.Id', 'LEFT');
        $subquery = $this->db->get_compiled_select();
        
        // main query
        $this->db->select('t_utama.Id, t_utama.Kriteria1,t_master_kriteria.Description AS Kriteria2, t_utama.IdTfn');
        $this->db->from('('.$subquery.') as t_utama');
        $this->db->join('t_master_kriteria', 't_utama.IdKriteria2 = t_master_kriteria.Id', 'LEFT');
        $this->db->order_by('Kriteria1','Kriteria2','ASC');
        return $this->db->get()->result();
     
        /*SELECT
            t_utama.Id,
            t_utama.Kriteria1,
            t_utama.IdTfn,
            t_master_kriteria.Description AS Kriteria2
        FROM
            (
                SELECT
                    t_nilai_kriteria.Id,
                    t_master_kriteria.Description AS Kriteria1,
                    t_nilai_kriteria.IdKriteria2,
                    t_nilai_kriteria.IdTfn

                FROM
                    t_nilai_kriteria
                LEFT JOIN t_master_kriteria ON t_nilai_kriteria.IdKriteria1 = t_master_kriteria.Id
            ) AS t_utama
        LEFT JOIN t_master_kriteria ON t_utama.IdKriteria2 = t_master_kriteria.Id
            ORDER BY
                Kriteria1,
                Kriteria2
        */

    }
    
}