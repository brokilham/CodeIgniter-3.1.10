<?php defined('BASEPATH') OR exit('No direct script access allowed');
class t_master_kriteria_model extends CI_Model
{
    private $_table = "t_master_kriteria";
    public $Id;
    public $Description;
  

    public function rules()
    {
        return [
            ['field' => 'Id',
            'label' => 'Id',
            'rules' => 'required'],

            ['field' => 'Description',
            'label' => 'Description',
            'rules' => 'required']
        ];
    }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["Id" => $id])->row();
    }

    public function getMaxId()
    {
        $this->db->select("MAX(id) AS Id");
        $this->db->from($this->_table);
        return $this->db->get()->result();

        // complete query
        // SELECT MAX(id) FROM `t_master_kriteria`;
    }

    public function save()
    {
        $post = $this->input->post();
        $this->Id = $post["Id"];
        $this->Description = $post["Description"];
        $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->Id = $post["Id"];
        $this->Description = $post["Description"];
        $this->db->update($this->_table, $this, array('Id' => $post['Id']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("Id" => $id));
    }

}