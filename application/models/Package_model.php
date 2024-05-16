<?php
ob_start();
class Package_model  extends CI_Model
{
	
	public function save_package() {
        $this->load->model('Package_model', 'pkg');
        $this->load->library("form_validation");

        // Set validation rules with custom error messages
        $this->form_validation->set_rules("package_name", "Package Name", "required|xss_clean", array(
            'required' => 'The %s field is required.'
        ));
        $this->form_validation->set_rules("job_function_uri", "Job Function URI", "required|xss_clean", array(
            'required' => 'The %s field is required.'
        ));
        $this->form_validation->set_rules("email_list_database_price", "Email List Database Price", "required|xss_clean", array(
            'required' => 'The %s field is required.'
        ));
        $this->form_validation->set_rules("number_of_leads", "Number of Leads", "required|xss_clean", array(
            'required' => 'The %s field is required.'
        ));
		$this->form_validation->set_rules("file_download_link", "file_download_links", "required|xss_clean", array(
            'required' => 'The %s field is required.'
        ));


        if ($this->form_validation->run() == FALSE) {
            // Validation failed, send validation errors as JSON response
            $validation_errors = array(
                'package_name' => form_error('package_name'),
                'job_function_uri' => form_error('job_function_uri'),
                'email_list_database_price' => form_error('email_list_database_price'),
                'number_of_leads' => form_error('number_of_leads'),
				'file_download_link' => form_error('file_download_link')
            );
            $response = array(
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validation_errors
            );

            $this->output
                ->set_content_type('application/json')
                ->set_output(json_encode($response));
        } else {
            // Validation passed, insert data into the database
            
			$data = array(
				'package_name' 					=> $this->input->post('package_name'),
				'job_function_uri' 				=> $this->input->post('job_function_uri'),
				'email_list_database_price' 	=> $this->input->post('email_list_database_price'),
				'number_of_leads'				=> $this->input->post('number_of_leads'),
				'file_download_link'			=> $this->input->post('file_download_link'),
				'status'						=> 'published',
			);

			$this->db->insert('email_list_database_price', $data);

            $response = array(
                'success' => true,
                'message' => 'Package Added Successfully.'
            );

            $this->output
                ->set_content_type('application/json')
                ->set_output(json_encode($response));
        }
    }

	public function package_list_content() {
        $this->db->order_by("email_list_database_id", "DESC");
        $query = $this->db->get("email_list_database_price");
        return $query->result();
    }
	
	public function edit_package($id) {
        $query = $this->db->get_where('email_list_database_price', array('email_list_database_id' => $id)); // Assuming your table is named 'pages'
        return $query->row();
    }
	
	public function update_package() {
		$this->load->library("form_validation");
        $this->form_validation->set_rules("package_name", "package_name", "xss_clean");
        $this->form_validation->set_rules("job_function_uri", "job_function_uri", "xss_clean");
        $this->form_validation->set_rules("email_list_database_price", "email_list_database_price", "xss_clean");
        $this->form_validation->set_rules("number_of_leads", "number_of_leads", "xss_clean");
		$this->form_validation->set_rules("file_download_link", "file_download_link", "xss_clean");

       	if ($this->form_validation->run() == FALSE) {
       	} else {
			$data = array(
				'package_name' 					=> $this->input->post('package_name'),
				'job_function_uri' 				=> $this->input->post('job_function_uri'),
				'email_list_database_price' 	=> $this->input->post('email_list_database_price'),
				'number_of_leads'				=> $this->input->post('number_of_leads'),
				'file_download_link'			=> $this->input->post('file_download_link'),
				'status'						=> $this->input->post('status'),
			);

			$id = $this->input->post('email_list_database_id');
			$this->db->where('email_list_database_id', $id);
            $this->db->update('email_list_database_price', $data);
		}
	}

    public function delete_package($id) {
		$this->db->where('email_list_database_id', $id);
		$result = $this->db->delete('email_list_database_price');
		return $result;
	}

	
	public function save_footer_link() {
        $this->load->library("form_validation");

        // Set validation rules with custom error messages
        $this->form_validation->set_rules("perma_link", "perma_link", "required|xss_clean", array(
            'required' => 'The %s field is required.'
        ));
        $this->form_validation->set_rules("name", "name", "required|xss_clean", array(
            'required' => 'The %s field is required.'
        ));
        $this->form_validation->set_rules("position", "position", "required|xss_clean", array(
            'required' => 'The %s field is required.'
        ));


        if ($this->form_validation->run() == FALSE) {
            // Validation failed, send validation errors as JSON response
            $validation_errors = array(
                'perma_link' => form_error('perma_link'),
                'name' => form_error('name'),
                'position' => form_error('position'),
            );
            $response = array(
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $validation_errors
            );

            $this->output
                ->set_content_type('application/json')
                ->set_output(json_encode($response));
        } else {
            // Validation passed, insert data into the database
            
			$data = array(
				'perma_link' 		=> $this->input->post('perma_link'),
				'name' 				=> $this->input->post('name'),
				'position' 			=> $this->input->post('position'),
			);

			$this->db->insert('footer_link', $data);

            $response = array(
                'success' => true,
                'message' => 'Added Successfully.'
            );

            $this->output
                ->set_content_type('application/json')
                ->set_output(json_encode($response));
        }
    }
}
