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
            //   if (empty($data["nama"]) ) {
            //       $data["has_nama"] = false;
            //   }else{
            //     $data["has_nama"] = true;
            // }
        } else {
            $data = $this->db->get("data")->result_array();
            // foreach ($data as $key => $value) {
            //     if (empty($data[$key]["nama"])) {
            //         $data[$key]["has_nama"] = false;
            //     } else {
            //         $data[$key]["has_nama"] = true;
            //     }
            // }
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
            'data' => null
        );
        $this->response($result, REST_Controller::HTTP_OK);
    }

    /**
     * Get All Data from this method.
     *
     * @return Response
     */
    public function edit_put($id)
    {
        $input = $this->put();
        $this->db->update('data', $input, array('id' => $id));
        // -
        $result = array(
            'status' => 200,
            'message' => 'Item updated successfully.',
            'data' => null
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
            'data' => null
        );
        $this->response($result, REST_Controller::HTTP_OK);
    }
}
