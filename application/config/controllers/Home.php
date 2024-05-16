<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class home extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->helper('text');

    }
    public function session_data(){
        $this->load->library('session');
    }


    public function index() {
        $this->load->library('session');
		$this->session_data();
		// $permalink = 'index';
		// $result = $this->db->get_where('pages', ['page_permalink' => $permalink])->row();	
        // if ($result!=null) {
		// 	$data['title'] = $result->page_meta_title;
		// 	$data['description'] = $result->page_meta_desc;
		// 	$data['keywords'] = $result->page_meta_desc;
		// }else{
		// 	$data['title'] = $this->uri->segment(2);
		// 	$data['description'] = 'Book Your Data';
		// 	$data['keywords'] = 'Book Your Data';
		// }
        $this->load->view('home/index');
    }

	public function sign_up() {
        $this->load->library('session');
		$permalink = $this->uri->segment(1);
		$result = $this->db->get_where('pages', ['page_permalink' => $permalink])->row();	
        if ($result!=null) {
			$data['title'] = $result->page_meta_title;
			$data['description'] = $result->page_meta_desc;
			$data['keywords'] = $result->page_meta_desc;
		}else{
			$data['title'] = $this->uri->segment(2);
			$data['description'] = 'Book Your Data';
			$data['keywords'] = 'Book Your Data';
		}
        $this->load->view('home/sign_up', $data );
    }
    public function save_sign_up() {
		$this->session_data();
        $this->load->library('session');
		$data['title'] = "Sign UP";
        $this->load->view('home/sign_up', $data );
    }
    public function save_email(){
        $this->session_data();
        $this->load->model('Add_email_model', 'aem');
        $this->aem->add_email();
        $_SESSION['success'] = 'Email Added successfully.';
    }

	public function email_list_builder() {
		$this->session_data();
		$permalink = $this->uri->segment(2);
		$result = $this->db->get_where('pages', ['page_permalink' => $permalink])->row();	
        $data['title'] = $result->page_meta_title;
		$data['description'] = $result->page_meta_desc;
		$data['keywords'] = $result->page_meta_desc;
		$data['business'] = "business";
		$this->load->view('home/email_list_builder',$data);
	}

	public function email_list_by_health_Care() {
		$this->session_data();
		$permalink = $this->uri->segment(2);
		$result = $this->db->get_where('pages', ['page_permalink' => $permalink])->row();	
        $data['title'] = $result->page_meta_title;
		$data['description'] = $result->page_meta_desc;
		$data['keywords'] = $result->page_meta_desc;
		$data['health'] = "healthcare";
		$this->load->view('home/email_list_builder',$data);
	}

	public function email_list_by_real_state() {
		$this->session_data();
		$permalink = $this->uri->segment(2);
		$result = $this->db->get_where('pages', ['page_permalink' => $permalink])->row();	
        $data['title'] = $result->page_meta_title;
		$data['description'] = $result->page_meta_desc;
		$data['keywords'] = $result->page_meta_desc;
		$data['realstate'] = "Real State";
		$this->load->view('home/email_list_builder',$data);
	}

	public function get_email_preview_by_buseness() {
        $this->session_data();
		$this->load->model('Add_email_model', 'aem');
        $data['data'] = $this->aem->get_email_preview_by_buseness();
		if ($data) {
            $response = array('status' => 'success', 'data' => $data);
        } else {
            $response = array('status' => 'error', 'message' => 'No email data found.');
        }
		header('Content-Type: application/json');
		echo json_encode($response);
    }
	
	public function get_email_preview_by_health_Care() {
        $this->session_data();
		$this->load->model('Add_email_model', 'aem');
        $data['data'] = $this->aem->get_email_preview_by_health_Care();
		if ($data) {
            $response = array('status' => 'success', 'data' => $data);
        } else {
            $response = array('status' => 'error', 'message' => 'No email data found.');
        }
		header('Content-Type: application/json');
		echo json_encode($response);
    }

	public function get_email_preview_by_real_state() {
        $this->session_data();
		$this->load->model('Add_email_model', 'aem');
        $data['data'] = $this->aem->get_email_preview_by_real_state();
		if ($data) {
            $response = array('status' => 'success', 'data' => $data);
        } else {
            $response = array('status' => 'error', 'message' => 'No email data found.');
        }
		header('Content-Type: application/json');
		echo json_encode($response);
    }

 
	public function ready_made_lists($type=null) {
		if ($type === null) {
			$this->load->view('home/404');
		} else {
				$this->session_data();
				$result = $this->db->get_where('type', ['type' => $type])->row();							
				$data['$type'] = $type;
			if ($result!=null) {
				$data['title'] = $result->type_h1;
				$data['description'] =$result->type_desc;
				$data['keywords'] = 'description';
				$this->load->view('home/ready_made_lists', $data);
			}else{
				$this->load->view('home/404');
			}
		}
    }

	public function ready_made_email_lists() {
        $this->session_data();
        $data['title'] = "ready_made_lists";
    	$this->load->view('home/ready_made_email_lists', $data);
    }
	
	// public function email_list_database($jobFunction) {
    //     $this->session_data();
	// 	// $jobFunction = $this->uri->segment(3);
	// 	$result = $this->db->get_where('job_function_uri', ['job_function_uri' => $jobFunction])->row();
	// 	if ($result!=null) {
	// 		$data['title'] = $result->job_function;
	// 		$data['description'] = $result->job_function_desc;
	// 		$data['keywords'] = $result->job_function;
	// 		$data['$jobFunction'] = $jobFunction;
	// 		$this->load->view('home/email_list_database', $data);
	// 	}else{
	// 		$this->load->view('home/404');
	// 	}
    // }
	public function email_list_database($jobFunction = null) {
		$this->session_data();
		
		if ($jobFunction === null) {
			$this->load->view('home/404');
		} else {
			$result = $this->db->get_where('job_function_uri', ['job_function_uri' => $jobFunction])->row();
			if ($result != null) {
				$data['title'] = $result->job_function;
				$data['description'] = $result->job_function_desc;
				$data['keywords'] = $result->job_function;
				$data['$jobFunction'] = $jobFunction;
				$this->load->view('home/email_list_database', $data);
			} else {
				$this->load->view('home/404');
			}
		}
	}
	
	
	public function pricing() {
        $this->session_data();
		$permalink = $this->uri->segment(2);
		$result = $this->db->get_where('pages', ['page_permalink' => $permalink])->row();	
        if ($result!=null) {
			$data['title'] = $result->page_meta_title;
			$data['description'] = $result->page_meta_desc;
			$data['keywords'] = $result->page_meta_desc;
		}else{
			$data['title'] = $this->uri->segment(2);
			$data['description'] = 'Book Your Data';
			$data['keywords'] = 'Book Your Data';
		}
    	$this->load->view('home/pricing', $data);
    }
	
	public function contact_us() {
        $this->session_data();
		$permalink = $this->uri->segment(2);
		$result = $this->db->get_where('pages', ['page_permalink' => $permalink])->row();	
		if ($result!=null) {
			$data['title'] = $result->page_meta_title;
			$data['description'] = $result->page_meta_desc;
			$data['keywords'] = $result->page_meta_desc;
		}else{
			$data['title'] = $this->uri->segment(2);
			$data['description'] = 'Book Your Data';
			$data['keywords'] = 'Book Your Data';
		}
		$this->load->view('home/contact_us', $data);
    }

	public function about_us() {
        $this->session_data();
		$permalink = $this->uri->segment(2);
		$result = $this->db->get_where('pages', ['page_permalink' => $permalink])->row();	
        if ($result!=null) {
			$data['title'] = $result->page_meta_title;
			$data['description'] = $result->page_meta_desc;
			$data['keywords'] = $result->page_meta_desc;
		}else{
			$data['title'] = $this->uri->segment(2);
			$data['description'] = 'Book Your Data';
			$data['keywords'] = 'Book Your Data';
		}
    	$this->load->view('home/about_us', $data);
    }
	
	public function error() {
		$this->load->view('home/404');
	}
	
	// public function downloadFile($file_path) {
    //     // Define the file to be downloaded
    //     // $file_path = 'path/to/your/file.zip'; // Change this to the actual path of your file

    //     // Check if the file exists
    //     if (file_exists($file_path)) {
    //         // Set headers to force the download
    //         header('Content-Type: application/octet-stream');
    //         header('Content-Disposition: attachment; filename="' . basename($file_path) . '"');
    //         header('Content-Length: ' . filesize($file_path));

    //         // Read the file and output it to the browser
    //         readfile($file_path);
    //         exit;
    //     } else {
    //         // If the file doesn't exist, display an error message
    //         echo "File not found.";
    //     }
    // }







}
