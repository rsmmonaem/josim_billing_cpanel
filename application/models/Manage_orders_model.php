<?php
ob_start();
class Manage_orders_model  extends CI_Model
{

// Order's	
    public function all_orders() {	
		$this->db->order_by("order_id", "DESC");
		$query = $this->db->get("orders");
		return $query->result();
	}

	public function edit_orders($id) {
        $query = $this->db->get_where('orders', array('o_id' => $id)); // Assuming your table is named 'pages'
        return $query->row();
    }

	public function update_orders() {
		$this->load->library("form_validation");
        $this->form_validation->set_rules("page_permalink", "page_permalink", "xss_clean");
        $this->form_validation->set_rules("page_meta_title", "page_meta_title", "xss_clean");
        $this->form_validation->set_rules("page_meta_desc", "page_meta_desc", "xss_clean");
        $this->form_validation->set_rules("page_meta_keyword", "page_meta_keyword", "xss_clean");

            $data = array(
                'page_permalink' 	=> $this->input->post('page_permalink'),
                'page_meta_title' 	=> $this->input->post('page_meta_title'),
                'page_meta_desc' 	=> $this->input->post('page_meta_desc'),
                'page_meta_keyword' => $this->input->post('page_meta_keyword'),
                'create_at' 		=> date('Y-m-d H:i:s'), 
            );

			$pages_id =$this->input->post('page_id');
			$this->db->where('pages_id', $pages_id);
            $this->db->update('pages', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success">Record has been Created successfully.</div>');
	}

	// // Order's	
    // public function all_orders() {	
	// 	$this->db->order_by("order_id", "DESC")->where("order_status",$user_email);
	// 	$query = $this->db->get("orders");
	// 	return $query->result();
	// }


		
}



