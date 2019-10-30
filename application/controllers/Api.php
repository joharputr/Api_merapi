<?php

require APPPATH . 'libraries/REST_Controller.php';

class Api extends REST_Controller
{
    /**
     * Get All Data from this method.
     *
     * @return Response
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    /**
     * Get All Data from this method.
     *
     * @return Response
     */
    public function lihat_get($id = 0)
    {
        if (!empty($id)) {
            $data = $this->db->get_where("data", ['id' => $id])->row_array();
        } else {
            $sql = "SELECT * FROM data a";
            $data = $this->db->query($sql)->result_array();
        }

        $result = array(
            'status' => 200,
            'message' => 'success',
            'data' => $data
        );

        $this->response($result, REST_Controller::HTTP_OK);
    }

    /**
     * Get All Data from this method.
     *
     * @return Response
     */
    public function tambah_post()
    {
        $input = $this->input->post();
        $this->db->insert('data', $input);
        // -
        $result = array(
            'status' => 200,
            'message' => 'Item created successfully.',
            'data' => true
        );
        $this->response($result, REST_Controller::HTTP_OK);
    }

    /**
     * Get All Data from this method.
     *
     * @return Response
     */
    public function edit_post($number)
    {
        $input = $this->post();
        $this->db->update('data', $input, array('number' => $number));
        // -
        $result = array(
            'status' => 200,
            'message' => 'Item updated successfully.',
            'data' => true
        );
        $this->response($result, REST_Controller::HTTP_OK);
    }

    /**
     * Get All Data from this method.
     *
     * @return Response
     */
    public function hapus_delete($id)
    {
        $this->db->delete('data', array('id' => $id));
        // -
        $result = array(
            'status' => 200,
            'message' => 'Item deleted successfully.',
            'data' => true
        );
        $this->response($result, REST_Controller::HTTP_OK);
    }
    /**
     * login
     *
     * @param 
     * @return
     */
    public function login_post()
    {
        // --
        $hp = $this->post('hp');
        $password = $this->post('password');
        // users
        $users = $this->db->get_where("user", ['hp' => $hp, 'password' => $password])->row_array();
        if ($users->num_rows() > 0) {
            // -
            $result = array(
                'status' => 200,
                'message' => 'login successfully.',
                'data' => $users
            );
        } else {
            // -
            $result = array(
                'status' => 403,
                'message' => 'login failed.',
                'data' => true
            );
        }
        $this->response($result, REST_Controller::HTTP_OK);
    }
    /**
     * register
     *
     * @param 
     * @return
     */
    public function register_post()
    {
        // --
        $nama = $this->post('nama');
        $hp = $this->post('hp');
        $password = $this->post('password');
        // cek user
        if (count($this->db->get_where("user", ['hp' => $hp])->row_array()) > 0) {
            // -
            $result = array(
                'status' => 403,
                'message' => 'user already exist.',
                'data' => true
            );
            $this->response($result, REST_Controller::HTTP_OK);
        }
        // params
        $params = [
            'nama' => $nama,
            'hp' => $hp,
            'password' => $password
        ];
        if ($this->db->insert('user', $params)) {
            // -
            $result = array(
                'status' => 200,
                'message' => 'register successfully.',
                'data' => true
            );
        } else {
            // -
            $result = array(
                'status' => 403,
                'message' => 'register failed.',
                'data' => true
            );
        }
        $this->response($result, REST_Controller::HTTP_OK);
    }
}
