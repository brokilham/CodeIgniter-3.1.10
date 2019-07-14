<?php defined('BASEPATH') OR exit('No direct script access allowed');
class view_nilai_sintesis_model extends CI_Model
{
    private $_view = "view_nilai_sintesis";
  
    public $IdKriteria1;
	public $Description;
	public $L_sintesis;
    public $M_sintesis;
    public $U_sintesis;

    public function getAll()
    {
        return $this->db->get($this->_view)->result();
    }

  
    
}