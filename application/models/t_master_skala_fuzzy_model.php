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

    public function getAll()
    {
        //return $this->db->get($this->_table)->result();

        $this->db->select("t_tfn.VALUE AS value_tfn,
        t_rec.VALUE AS value_rec,
      t_master_himpunan_linguistik.Deskripsi,
        t_tfn.Low as tfn_low,
        t_tfn.Medium as tfn_medium,
        t_tfn.Up as tfn_up,
        t_rec.Low as rec_low,
        t_rec.Medium as rec_medium,
        t_rec.Up as rec_up");
        $this->db->from("(
            SELECT
                *
            FROM
                t_master_skala_fuzzy
            WHERE
                keterangan = 'TFN'
        ) AS t_tfn");
        $this->db->join("(
            SELECT
                *
            FROM
                t_master_skala_fuzzy
            WHERE
                keterangan = 'REC'
        ) AS t_rec", "t_tfn.IdLinguistik = t_rec.IdLinguistik", "left");

        $this->db->join("t_master_himpunan_linguistik","t_tfn.IdLinguistik =  t_master_himpunan_linguistik.Id", "left");
        //$query = $this->db->get();

        return $this->db->get()->result();

        // Produces:
        // SELECT * FROM blogs JOIN comments ON comments.id = blogs.id

        //Multiple function calls can be made if you need several joins in one query.

        //If you need a specific type of JOIN you can specify it via the third parameter of the function. Options are: left, right, outer, inner, left outer, and right outer.


        //$this->db->join('comments', 'comments.id = blogs.id', 'left');
        // Produces: LEFT JOIN comments ON comments.id = blogs.id
    }

    /*public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }
    
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["product_id" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->product_id = uniqid();
        $this->name = $post["name"];
        $this->price = $post["price"];
        $this->description = $post["description"];
        $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->product_id = $post["id"];
        $this->name = $post["name"];
        $this->price = $post["price"];
        $this->description = $post["description"];
        $this->db->update($this->_table, $this, array('product_id' => $post['id']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("product_id" => $id));
    }*/
}