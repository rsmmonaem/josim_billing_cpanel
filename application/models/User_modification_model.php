<?php
ob_start();
class user_modification_model  extends CI_Model
{


    function get_user() {
        $this->db->order_by("user_name", "DESC");
        $query = $this->db->get("admin_user");
        return $query->result();
    }
    function get_certificate_id($table, $u_id){
        $result = $this->db->get_where($table, ['trainee_id' => $u_id])->row();
        return $result;
    }

    function get_user_modification_id($table, $user_name)
    {
        $result = $this->db->get_where($table, ['user_name' => $user_name])->row();
        return $result;
    }
    function get_inst_user_modification_id($table, $inst_user_id)
    {
        $result = $this->db->get_where($table, ['inst_user_id' => $inst_user_id])->row();
        return $result;
    }
	function get_trainee_user_modification_id($table, $trainee_username)
    {
        $result = $this->db->get_where($table, ['trainee_username' => $trainee_username])->row();
        return $result;
    }
	
    function create_user()
    {
        $this->load->library("form_validation");
        $this->form_validation->set_rules("full_name", "full_name", "xss_clean");
        $this->form_validation->set_rules("user_name", "user_name", "xss_clean");
        $this->form_validation->set_rules("pass_word", "pass_word", "xss_clean");
        $this->form_validation->set_rules("user_type", "user_type", "xss_clean");
        $this->form_validation->set_rules("status", "status", "xss_clean");

            $data = array(
                'full_name' => $this->input->post('full_name'),
                'user_name' => $this->input->post('user_name'),
                'pass_word' => $this->input->post('pass_word'),
                'user_type' => $this->input->post('user_type'),
                'status'    => $this->input->post('status'),


            );

            $this->db->insert('admin_user', $data);
            //$id = $this->db->insert_id();
            $this->session->set_flashdata('message', '<div class="alert alert-success">Record has been Created successfully.</div>');


    }




    function update_user_modification() 
	{
        $this->load->library("form_validation");
        $this->form_validation->set_rules("first_name", "first_name", "xss_clean");
		$this->form_validation->set_rules("last_name", "last_name", "xss_clean");
        $this->form_validation->set_rules("user_name", "user_name", "xss_clean");
        $this->form_validation->set_rules("pass_word", "pass_word", "xss_clean");
        $this->form_validation->set_rules("user_type", "user_type", "xss_clean");
        $this->form_validation->set_rules("status", "status", "xss_clean");
		$this->form_validation->set_rules("u_id", "u_id", "xss_clean");

		$u_id = $this->input->post('u_id');
		
            $data = array(
                'first_name' => $this->input->post('first_name'),
				'last_name' => $this->input->post('last_name'),
                'user_name' => $this->input->post('user_name'),
                'pass_word' => $this->input->post('pass_word'),
                // 'user_type' => $this->input->post('user_type'),
                // 'status' => $this->input->post('status'),
            );
			
            $this->db->where('u_id', $u_id);
            $this->db->update('admin_user', $data);
    }
    


}
