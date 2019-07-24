<?php defined('BASEPATH') OR exit('No direct script access allowed');
class t_nilai_kriteria_tfn_model extends CI_Model
{
    private $_table = "t_nilai_kriteria_tfn";

    public $Id;
    public $IdKriteria1;
    public $IdKriteria2;
    public $Tfn;
    public $NilaiBobotTfn;
    

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

            ['field' => 'Tfn',
            'label' => 'Tfn',
            'rules' => 'required'],

            ['field' => 'NilaiBobotTfn',
            'label' => 'NilaiBobotTfn',
            'rules' => 'required']
        ];
    }
   
   
    public function getAllOrderByTfn()
    {
        $this->db->from($this->_table);
        $this->db->order_by("IdKriteria1","asc");
        $this->db->order_by("IdKriteria2","asc");
        $this->db->order_by("Tfn","asc");
        return $this->db->get()->result();
        //select * from  t_nilai_kriteria_tfn order by IdKriteria1,IdKriteria2,TFN asc
    }

    public function getJumlahBarisTfn()
    {
        $this->db->select('IdKriteria2, IdKriteria1, Tfn, SUM(NilaiBobotTfn) AS jumlah_baris');
        $this->db->from($this->_table);
        $this->db->group_by('IdKriteria1');
        $this->db->group_by('Tfn');
        return $this->db->get()->result();
        //SELECT Tfn, IdKriteria2, IdKriteria1, SUM(NilaiBobotTfn) AS jumlah_baris FROM `t_nilai_kriteria_tfn` GROUP BY IdKriteria1, Tfn
    }
    
    public function getJumlahTfn()
    {
        $this->db->select('Tfn, SUM(NilaiBobotTfn) AS total_tfn');
        $this->db->from($this->_table);
        $this->db->group_by('Tfn');
        return $this->db->get()->result();
        //SELECT Tfn, SUM(NilaiBobotTfn) AS total_tfn FROM t_nilai_kriteria_tfn GROUP BY Tfn
    }

    public function getElemen()
    {   
        $this->db->select('Tfn, SUM(NilaiBobotTfn) AS total_elemen');
        $this->db->from($this->_table);
        $this->db->group_by('Tfn');
        $this->db->order_by('Tfn','DESC');
        return $this->db->get()->result();
        //SELECT Tfn, SUM(NilaiBobotTfn) FROM t_nilai_kriteria_tfn WHERE Tfn = 'L'
    }


    public function getbyId($IdKriteria1,$IdKriteria2)
    {
        //$this->Id = $Id;   
        $this->IdKriteria1 = $IdKriteria1;
        $this->IdKriteria2 = $IdKriteria2;
        return $this->db->get_where($this->_table, ["IdKriteria1" => $IdKriteria1,"IdKriteria2" => $IdKriteria2])->result();
        
        //SELECT * FROM t_nilai_kriteria_tfn WHERE IdKriteria1 = '1' AND IdKriteria2 = '2'
   
    }

    public function delete($id_kriteria)
    {      
        $this->db->where("IdKriteria1",$id_kriteria);
        $this->db->or_where("IdKriteria2",$id_kriteria);
        return $this->db->delete($this->_table,$this);
    }


    public function update($Id,$IdKriteria1,$IdKriteria2,$Tfn,$NilaiBobotTfn)
    {
        $this->Id = $Id;   
        $this->IdKriteria1 = $IdKriteria1;
        $this->IdKriteria2 = $IdKriteria2;
        $this->Tfn = $Tfn;
        $this->NilaiBobotTfn = $NilaiBobotTfn;
        $this->db->update($this->_table, $this, array('Id'=> $Id));      
    }

    public function getDataByIdKriteria($IdKriteria1,$IdKriteria2)
    {

        $this->db->select('
                            t_nilai_kriteria.IdKriteria1,
                            t_nilai_kriteria.IdKriteria2,
                            t_nilai_kriteria.NilaiBobotKriteria,
                            t_master_himpunan_linguistik.Low,
                            t_master_himpunan_linguistik.`Medium`,
                            t_master_himpunan_linguistik.Up');
        $this->db->from('t_nilai_kriteria');
        $this->db->join('t_master_himpunan_linguistik', 't_nilai_kriteria.NilaiBobotKriteria = t_master_himpunan_linguistik.Nilai', 'LEFT');
        $this->db->where('IdKriteria1',$IdKriteria1);
        $this->db->where('IdKriteria2', $IdKriteria2);
        return $this->db->get()->row();

        //return $this->db->get_where($this->_table, ["IdKriteria1" => $IdKriteria1,"IdKriteria2" => $IdKriteria2,"Tfn" => $Tfn])->row();
    
        /*SELECT
            t_nilai_kriteria.IdKriteria1,
            t_nilai_kriteria.IdKriteria2,
            t_nilai_kriteria.NilaiBobotKriteria,
            t_master_himpunan_linguistik.Low,
            t_master_himpunan_linguistik.`Medium`,
            t_master_himpunan_linguistik.Up
        FROM
            t_nilai_kriteria
        LEFT JOIN t_master_himpunan_linguistik ON t_nilai_kriteria.NilaiBobotKriteria = t_master_himpunan_linguistik.Nilai
        WHERE
            IdKriteria1 = '1'
        AND IdKriteria2 = '1'*/
    
    }

        
}