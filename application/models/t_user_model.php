<?php defined('BASEPATH') OR exit('No direct script access allowed');
class t_user_model extends CI_Model
{
    private $_table = "t_user";
    public $Id;
    public $Username;
    public $Password;

    // rules saat add data
    public function rules()
    {
        return [
            ['field' => 'Username',
            'label' => 'Username',
            'rules' => 'required'],

            ['field' => 'Password',
            'label' => 'Password',
            'rules' => 'required']
        ];
    }

    // rules saat edit data
    public function rulesEdit()
    {
        return [
            ['field' => 'Id',
            'label' => 'Id',
            'rules' => 'required'],

            ['field' => 'Username',
            'label' => 'Username',
            'rules' => 'required'],

            ['field' => 'Password',
            'label' => 'Password',
            'rules' => 'required']
        ];
    }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getUser($id,$password)
    {
        return $this->db->get_where($this->_table, ["Username" => $id,"Password" => md5($password)])->num_rows();
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["Id" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->Username = $post["Username"];
        $this->Password = md5($post["Password"]);
        $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->Id = $post["Id"];
        $this->Username = $post["Username"];
        $this->Password = md5($post["Password"]);
        $this->db->update($this->_table, $this, array('Id' => $post['Id']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("Id" => $id));
    }

}