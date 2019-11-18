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

    function cek_login($table,$where){      
        return $this->db->get_where($table,$where);
    }   

    function aksi_login_post($username,$password){
    $username = $this->input->post('username');
    $password = $this->input->post('password');
    $where = array(
        'username' => $username,
        'password' => md5($password)
        );
    $cek = $this->m_login->cek_login("data",$where)->num_rows();
    if($cek > 0){
 
        $data_session = array(
            'nama' => $username,
            'status' => "login"
            );
 
        $this->session->set_userdata($data_session);
 
    
    }else{
        echo "Username dan password salah !";
    }
}
}
