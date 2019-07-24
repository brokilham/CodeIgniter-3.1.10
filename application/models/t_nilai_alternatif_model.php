<?php defined('BASEPATH') OR exit('No direct script access allowed');
class t_nilai_alternatif_model extends CI_Model
{
    private $_table = "t_nilai_alternatif";
    public $Id;
    public $IdAlternatif;
    public $IdAlternatif2;
    public $IdKriteria;
    public $Pencapaian;
    public $NilaiPencapaian;
    public $NilaiBobot;
  

    public function rules()
    {
        return [
            ['field' => 'Id',
            'label' => 'Id',
            'rules' => 'required'],
       
            ['field' => 'IdAlternatif',
            'label' => 'IdAlternatif',
            'rules' => 'required'],

            ['field' => 'IdAlternatif2',
            'label' => 'IdAlternatif2',
            'rules' => 'required'],

            ['field' => 'IdKriteria',
            'label' => 'IdKriteria',
            'rules' => 'required'],

            ['field' => 'Pencapaian',
            'label' => 'Pencapaian',
            'rules' => 'required'],

            ['field' => 'NilaiPencapaian',
            'label' => 'NilaiPencapaian',
            'rules' => 'required'],

            ['field' => 'NilaiBobot',
            'label' => 'NilaiBobot',
            'rules' => 'required']

           
        ];
    }

    public function getDataByIdAlternatif($id_alternatif1,$id_alternatif2,$id_kriteria)
    {

        return $this->db->get_where($this->_table, ["IdAlternatif" => $id_alternatif1,"IdAlternatif2" => $id_alternatif2,"IdKriteria" => $id_kriteria])->row();
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

    public function getJumlahKolomWithCondition($conditonId)
    {
        $this->db->select('IdKriteria, IdAlternatif2, SUM(NilaiBobot) AS Jumlah ');
        $this->db->from($this->_table);
        $this->db->where_in('IdAlternatif', $conditonId);
        $this->db->group_by('IdKriteria');
        $this->db->group_by('IdAlternatif2');
        return $this->db->get()->result();

        //SELECT IdKriteria, IdAlternatif, SUM(NilaiBobot) AS Jumlah FROM t_nilai_alternatif GROUP BY IdKriteria,IdAlternatif
    }

    public function getAllOrderByAlternatifWithCondition($conditonId)
    {
        $this->db->select("*");
        $this->db->from($this->_table);
        $this->db->where_in('IdAlternatif', $conditonId);
        $this->db->where_in('IdAlternatif2', $conditonId);
       // and IdAlternatif2 IN (1,2)
        $this->db->order_by("IdKriteria","asc");
        $this->db->order_by("IdAlternatif","asc");
        $this->db->order_by("IdAlternatif2","asc");
        return $this->db->get()->result();

        //SELECT * FROM t_nilai_alternatif  WHERE IdAlternatif IN ($conditonId) ORDER BY IdKriteria,IdAlternatif,IdAlternatif2,
    }

    public function getAllOrderByAlternatifWithIdKriteria($idKriteria)
    {
        $this->db->from($this->_table);
        $this->db->order_by("IdKriteria","asc");
        $this->db->order_by("IdAlternatif","asc");
        $this->db->order_by("IdAlternatif2","asc");
        $this->db->where('IdKriteria',$idKriteria);
        return $this->db->get()->result();

        //SELECT * FROM t_nilai_alternatif  ORDER BY IdKriteria,IdAlternatif,IdAlternatif2,
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

    public function save($id_alternatif,$id_alternatif2,$id_kriteria)//<--- function ini apakah dipakai? karena saaya liat masih salah, parameternya?
    {
        $this->IdAlternatif = $id_alternatif;
        $this->IdAlternatif2 = $id_alternatif2;
        $this->IdKriteria = $id_kriteria;
        $this->Pencapaian = 0;
        $this->NilaiPencapaian = 0;
        $this->NilaiBobot = 5;
        $this->db->insert($this->_table, $this);
    }


    public function update($id,$id_alternatif,$id_alternatif2,$id_kriteria,$pencapaian,$nilai_pencapaian,$nilai_bobot)
    {
        $this->Id = $id;
        $this->IdAlternatif = $id_alternatif;
        $this->IdAlternatif2 = $id_alternatif2;
        $this->IdKriteria = $id_kriteria;
        $this->Pencapaian = $pencapaian;
        $this->NilaiPencapaian = $nilai_pencapaian;
        $this->NilaiBobot = $nilai_bobot;

        $this->db->update($this->_table, $this, array('Id' => $id));     
    }
    

         
}