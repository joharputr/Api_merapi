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
    public function hapus_delete($number)
    {
        $this->db->delete('data', array('number' => $number));
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
        $nama = $this->post('nama');
        $password = $this->post('password');
        // users
        $users = $this->db->get_where("user", ['nama' => $nama, 'password' => $password])->row_array();
        if ($users) {
            // update login
            $params = ['is_login' => '1'];
            $where = ['id' => $users['id']];
            $this->db->update('user', $params, $where);
            // -
            $result = array(
                'status' => 200,
                'message' => 'login successfully.',
                'data' =>  $users = $this->db->get_where("user", ['nama' => $nama, 'password' => $password])->row_array()
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
        if ($this->db->get_where("user", ['hp' => $hp])->row_array()) {
            // -
            $result = array(
                'status' => 403,
                'message' => 'user already exist.',
                'data' => true
            );
            return $this->response($result, REST_Controller::HTTP_OK);
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
        return $this->response($result, REST_Controller::HTTP_OK);
    }

    /**
     * login
     *
     * @param 
     * @return
     */
    public function logout_post()
    {
        // --
        $nama = $this->post('nama');
        $password = $this->post('password');
        // users
        $users = $this->db->get_where("user", ['nama' => $nama, 'password' => $password])->row_array();
        if ($users) {
            // update login
            $params = ['is_login' => '0'];
            $where = ['id' => $users['id']];
            $this->db->update('user', $params, $where);
            // -
            $result = array(
                'status' => 200,
                'message' => 'login successfully.',
                'data' => $users = $this->db->get_where("user", ['nama' => $nama, 'password' => $password])->row_array()
            );
        } else {
            // -
            $result = array(
                'status' => 403,
                'message' => 'logout failed.',
                'data' => true
            );
        }
        $this->response($result, REST_Controller::HTTP_OK);
    }

    /**
     * Get All Data from this method.
     *
     * @return Response
     */
    public function lihatUser_get($id = 0)
    {
        if (!empty($id)) {
            $data = $this->db->get_where("user", ['id' => $id])->row_array();
        } else {
            $sql = "SELECT * FROM user a";
            $data = $this->db->query($sql)->result_array();
        }

        $result = array(
            'status' => 200,
            'message' => 'success',
            'data' => $data
        );

        $this->response($result, REST_Controller::HTTP_OK);
    }

    public function edituser_post($id)
    {
        $input = $this->post();
        $this->db->update('user', $input, array('id' => $id));
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
    public function postDataEnter_post()
    {
        $input = $this->input->post();
        $this->db->insert('data_enter', $input);
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
    public function lihatDataEnter_get($id = 0)
    {
        if (!empty($id)) {
            $data = $this->db->get_where("data_enter", ['id' => $id])->row_array();
        } else {
            $sql = "SELECT * FROM `data_enter` ORDER BY id DESC";
            $data = $this->db->query($sql)->result_array();
        }

        $result = array(
            'status' => 200,
            'message' => 'success',
            'data' => $data
        );

        $this->response($result, REST_Controller::HTTP_OK);
    }

    public function lihatDataExit_get($id = 0)
    {
        if (!empty($id)) {
            $data = $this->db->get_where("data_exit", ['id' => $id])->row_array();
        } else {
            $sql = "SELECT * FROM `data_exit` ORDER BY id DESC";
            $data = $this->db->query($sql)->result_array();
        }

        $result = array(
            'status' => 200,
            'message' => 'success',
            'data' => $data
        );

        $this->response($result, REST_Controller::HTTP_OK);
    }

    public function postDataExit_post()
    {
        $input = $this->input->post();
        $this->db->insert('data_exit', $input);
        // -
        $result = array(
            'status' => 200,
            'message' => 'Item created successfully.',
            'data' => true
        );
        $this->response($result, REST_Controller::HTTP_OK);
    }

    public function lihatDataAman_get($id = 0)
    {
        if (!empty($id)) {
            $data = $this->db->get_where("data_user_aman", ['id' => $id])->row_array();
        } else {
            $sql = "SELECT * FROM `data_user_aman` ORDER BY id DESC";
            $data = $this->db->query($sql)->result_array();
        }

        $result = array(
            'status' => 200,
            'message' => 'success',
            'data' => $data
        );

        $this->response($result, REST_Controller::HTTP_OK);
    }

    public function postDataAman_post()
    {
        $input = $this->input->post();
        $this->db->insert('data_user_aman', $input);
        // -
        $result = array(
            'status' => 200,
            'message' => 'Item created successfully.',
            'data' => true
        );
        $this->response($result, REST_Controller::HTTP_OK);
    }

    /**
     * Search method
     *
     * @return Response
     */
    public function search_get()
    {
        /// query params
        $q = $this->get('q') ?: '';

        // datas
        $this->db->like('phone', $q);
        $this->db->or_like('nama_zona', $q);
        $this->db->or_like('waktu', $q);
        $data = $this->db->get('data_user_aman')->result_array();

        $result = array(
            'status' => 200,
            'message' => 'success',
            'data' => $data
        );

        $this->response($result, REST_Controller::HTTP_OK);
    }
}
