<?php
ob_start();
class Seo_model  extends CI_Model
{
	
    function save_page_for_seo()
    {
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

            $this->db->insert('pages', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success">Record has been Created successfully.</div>');
    }

	
	public function page_for_seo_list_content() {
        $this->db->order_by("pages_id", "DESC");
        $query = $this->db->get("pages");
        return $query->result();
    }
	
	public function edit_page_for_seo($page_id) {
        $query = $this->db->get_where('pages', array('pages_id' => $page_id)); // Assuming your table is named 'pages'
        return $query->row();
    }
	
	public function update_page_for_seo() {
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

    public function delete_page_for_seo($id) {
		$this->db->where('pages_id', $id);
		$result = $this->db->delete('pages');
		return $result;
	}
}
