<?php
ob_start();
class Add_entry_model  extends CI_Model
{
    function add_entry() {
        $this->load->library("form_validation");
        $this->form_validation->set_rules("bill_no", "bill_no", "xss_clean");
        $this->form_validation->set_rules("byer_payment_status", "byer_payment_status", "xss_clean");
		$this->form_validation->set_rules("submited_bill", "submited_bill", "xss_clean");
        $this->form_validation->set_rules("rcv_bill", "rcv_bill", "xss_clean");
        $this->form_validation->set_rules("debit", "debit", "xss_clean");
        $this->form_validation->set_rules("credit", "credit", "xss_clean");
        // $this->form_validation->set_rules("balance", "balance", "xss_clean");
        // $this->form_validation->set_rules("remark", "remark", "xss_clean");
		$this->form_validation->set_rules("create_date", "create_date", "xss_clean");
        if ($this->form_validation->run() == FALSE) {
        } else {

            $data = array(
                'bill_no'             			=> $this->input->post('bill_no'),
                'byer_payment_status'           => $this->input->post('byer_payment_status'),
                'submited_bill'          		=> $this->input->post('submited_bill'),
                'rcv_bill'            			=> $this->input->post('rcv_bill'),
                'debit'          				=> $this->input->post('debit'),
                'credit'             			=> $this->input->post('credit'),
				// 'balance' 						=> $this->input->post('balance'),
				'create_date' 					=> $this->input->post('create_date'),

            );

            $this->db->insert('entry_list', $data);
			
        }


    }
	public function get_entry() {
		$this->db->select('*');
		$this->db->order_by("id", "ASC");
		$query = $this->db->get("entry_list");
		$entries = $query->result_array();
	
		$previousBalance = 0;
		$currentBalance = 0;
		$totalBalance = 0;
	
		// Calculate balance for each entry and sum up total balance
		foreach ($entries as &$entry) {
			// Convert debit and credit to float for calculation
			$debit = floatval($entry['debit']);
			$credit = floatval($entry['credit']);
	
			if ($credit > 0) {
				// If credit is greater than 0, subtract credit from previous balance
				$entry['balance'] = $previousBalance - $credit;
			} elseif ($debit > 0) {
				// If debit is greater than 0, add debit to previous balance
				$entry['balance'] = $previousBalance + $debit;
			}
	
			// Update previous balance for the next iteration
			$previousBalance = $entry['balance'];
	
			// Add the current entry's balance to the total balance
			$totalBalance += $entry['balance'];
		}
	
		// Set the current balance to the last entry's balance
		$currentBalance = $entries ? end($entries)['balance'] : 0;
	
		// Return entries along with current balance and total balance
		return [
			'entries' => $entries,
			'currentBalance' => $currentBalance,
			'totalBalance' => $totalBalance
		];
	}
	
	


	public function get_email_preview_by_buseness() {
		$this->db->order_by("id", "DESC");
		$this->db->limit(20); // Limit the result to 20 rows
		$query = $this->db->get_where("entry_list",['type' => 'business']);
		return $query->result();
	}

	public function get_email_preview_by_health_Care() {
		$this->db->order_by("id", "DESC");
		$this->db->limit(20); // Limit the result to 20 rows
		$query = $this->db->get_where("entry_list",['type' => 'healthcare']);
		return $query->result();
	}
	
	public function get_email_preview_by_real_state() {
		$this->db->order_by("id", "DESC");
		$this->db->limit(20); // Limit the result to 20 rows
		$query = $this->db->get_where("entry_list",['type' => 'realstate']);
		return $query->result();
	}

	public function edit_email($id) {
        $query = $this->db->get_where('entry_list', array('id' => $id)); // Assuming your table is named 'pages'
        return $query->row();
    }
	public function update_email() {
        $this->form_validation->set_rules("direct_email", "direct_email", "xss_clean");
        $this->form_validation->set_rules("contact_name", "contact_name", "xss_clean");
		$this->form_validation->set_rules("company", "company", "xss_clean");
        $this->form_validation->set_rules("sic_coad", "sic_coad", "xss_clean");
        $this->form_validation->set_rules("employee_range", "employee_range", "xss_clean");
        $this->form_validation->set_rules("revenue_range", "revenue_range", "xss_clean");
        $this->form_validation->set_rules("job_lavel", "job_lavel", "xss_clean");
        $this->form_validation->set_rules("job_function_uri", "job_function_uri", "xss_clean");
        $this->form_validation->set_rules("country", "country", "xss_clean");
		$this->form_validation->set_rules("city", "city", "xss_clean");
		$this->form_validation->set_rules("type", "type", "xss_clean");
		$this->form_validation->set_rules("create_date", "create_date", "xss_clean");
		if ($this->form_validation->run() == FALSE) {
			$_SESSION['success'] = 'Not Updated successfully.';
        } else {

            $data = array(
                'direct_email'             => $this->input->post('direct_email'),
                'contact_name'             => $this->input->post('contact_name'),
                'company'          			=> $this->input->post('company'),
                'sic_coad'            => $this->input->post('sic_coad'),
                'employee_range'          => $this->input->post('employee_range'),
                'revenue_range'             => $this->input->post('revenue_range'),
				'job_lavel' 			=> $this->input->post('job_lavel'),
				'job_function_uri' 			=> $this->input->post('job_function_uri'),
				'country' 			=> $this->input->post('country'),
				'city' 			=> $this->input->post('city'),
				'type' 			=> $this->input->post('type'),
				'create_date' 			=> $this->input->post('create_date'),

            );
			$id =$this->input->post('id');
			$this->db->where('id', $id);
            $this->db->update('entry_list', $data);
			$_SESSION['success'] = 'Updated successfully.';
		}
		
	}

	public function delete_entry($id) {
		$this->db->where('id', $id);
		$result = $this->db->delete('entry_list');
		return $result;
	}

	// Job Function 
	function add_job_function() {
        $this->load->library("form_validation");
        $this->form_validation->set_rules("job_function", "job_function", "xss_clean");
        $this->form_validation->set_rules("job_function_uri", "job_function_uri", "xss_clean");
		$this->form_validation->set_rules("job_function_desc", "job_function_desc", "xss_clean");
        $this->form_validation->set_rules("job_function_details", "job_function_details", "xss_clean");
        $this->form_validation->set_rules("job_function_img", "job_function_img", "xss_clean");
		$this->form_validation->set_rules("type", "type", "xss_clean");
		$this->form_validation->set_rules("job_function_price", "job_function_price", "xss_clean");
		$this->form_validation->set_rules("job_function_emails_numbers", "job_function_emails_numbers", "xss_clean");
		$this->form_validation->set_rules("job_function_number_of_leads", "job_function_number_of_leads", "xss_clean");
		
        if ($this->form_validation->run() == FALSE) {
        } else {
					$job_function_img = $_FILES['job_function_img']['name'];
					if ($job_function_img != "") {
						$job_function_img = random_string('alnum', 10) . '.jpg';
						//insert image
						$config['file_name'] = $job_function_img;
						$config['upload_path'] = 'uploads/job_function';
						$config['allowed_types'] = 'gif|jpg|jpeg|png';
						$config['max_size']         = '100000';
						$config['encrypt_name']     = false;
						$config['image_library'] = 'gd2';
						$this->load->library('upload', $config);
						$this->upload->initialize($config);
						$this->upload->do_upload('job_function_img');

						$file_data = $this->upload->data();
					} else {
						$job_function_img = "default.png";
					}
					//insert data to database
					$data = array(
						'job_function'             			=> $this->input->post('job_function'),
						'job_function_uri'                	=> $this->input->post('job_function_uri'),
						'job_function_desc'               	=> $this->input->post('job_function_desc'),
						'job_function_details'           	=> $this->input->post('job_function_details'),
						'job_function_img'            		=> $job_function_img,
						'type'           	=> $this->input->post('type'),
						'job_function_price'               	=> $this->input->post('job_function_price'),
						'job_function_emails_numbers'       => $this->input->post('job_function_emails_numbers'),
						'last_update_date' 					=> date('Y/m/d'),
						'job_function_number_of_leads' 		=> $this->input->post('job_function_number_of_leads'),
						
					);
					$this->db->insert('job_function_uri', $data);
					
				}  

    }
    public function get_job_function() {
        $this->db->order_by("job_function_id", "DESC");
        $query = $this->db->get("job_function_uri");
        return $query->result();
    }

	public function getPrice($product_id) {
        // Perform a database query to fetch the price
        $query = $this->db->get_where('entry_list_database_price', ['job_function_uri' => $product_id]);

        if ($query->num_rows() > 0) {
            $row = $query->row();
            return $row->file_download_link;
        } else {
            return false;
        }
    }
	public function edit_job_function($id) {
        $query = $this->db->get_where('job_function_uri', array('job_function_id' => $id)); // Assuming your table is named 'pages'
        return $query->row();
    }
	public function update_job_function() {
		$this->load->library("form_validation");
        $this->form_validation->set_rules("job_function", "job_function", "xss_clean");
        $this->form_validation->set_rules("job_function_uri", "job_function_uri", "xss_clean");
		$this->form_validation->set_rules("job_function_desc", "job_function_desc", "xss_clean");
        $this->form_validation->set_rules("job_function_details", "job_function_details", "xss_clean");
		$this->form_validation->set_rules("type", "type", "xss_clean");
		$this->form_validation->set_rules("job_function_price", "job_function_price", "xss_clean");
		$this->form_validation->set_rules("job_function_emails_numbers", "job_function_emails_numbers", "xss_clean");
		$this->form_validation->set_rules("job_function_number_of_leads", "job_function_number_of_leads", "xss_clean");

            $data = array(
				'job_function'             			=> $this->input->post('job_function'),
				'job_function_uri'                	=> $this->input->post('job_function_uri'),
				'job_function_desc'               	=> $this->input->post('job_function_desc'),
				'job_function_details'           	=> $this->input->post('job_function_details'),
				'type'           					=> $this->input->post('type'),
				'job_function_price'               	=> $this->input->post('job_function_price'),
				'job_function_emails_numbers'       => $this->input->post('job_function_emails_numbers'),
				'last_update_date' 					=> date('Y/m/d'),
				'job_function_number_of_leads' 		=> $this->input->post('job_function_number_of_leads'),
            );

			$id = $this->input->post('job_function_id');
			$this->db->where('job_function_id', $id);
            $this->db->update('job_function_uri', $data);
	}

	public function delete_job_function($id) {
		$this->db->where('job_function_id', $id);
		$result = $this->db->delete('job_function_uri');
		return $result;
	}
	

	
	function save_user() {
        $this->load->library("form_validation");
        $this->form_validation->set_rules("user_name", "user_name", "xss_clean");
        $this->form_validation->set_rules("first_name", "first_name", "xss_clean");
		$this->form_validation->set_rules("last_name", "last_name", "xss_clean");
        $this->form_validation->set_rules("phone_area_coad", "phone_area_coad", "xss_clean");
        $this->form_validation->set_rules("mobile_number", "mobile_number", "xss_clean");
		$this->form_validation->set_rules("company", "company", "xss_clean");
        $this->form_validation->set_rules("country", "country", "xss_clean");
		$this->form_validation->set_rules("pass_word", "pass_word", "xss_clean");
			
        if ($this->form_validation->run() == FALSE) {

        } else {
					$data = array(
						'user_name'             			=> $this->input->post('user_name'),
						'first_name'                		=> $this->input->post('first_name'),
						'last_name'               			=> $this->input->post('last_name'),
						'phone_area_coad'           		=> $this->input->post('phone_area_coad'),
						'mobile_number'             		=> $this->input->post('mobile_number'),
						'company'                			=> $this->input->post('company'),
						'country'               			=> $this->input->post('country'),
						'pass_word'           				=> $this->input->post('pass_word'),
						'user_type'               			=> 'user',
						'status'           					=> 'ENABLE',

					);
					$this->db->insert('admin_user', $data);
							
				}  
   }

    public function orders_history() {
		$user_email = $this->session->userdata('user_name');	
		$this->db->order_by("order_id", "DESC")->where("user_email",$user_email);
		$query = $this->db->get("orders");
		return $query->result();
	}
		
}



