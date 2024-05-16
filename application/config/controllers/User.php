<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class user extends CI_Controller {


    function __construct() {
        parent::__construct();
        $this->load->helper('form');

        /*cache control*/
        $this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
        $this->output->set_header("Expires: Mon, 26 Jul 2210 05:00:00 GMT");
    }

    public function session_data() {
        $this->load->library('session');
        $this->load->helper('text');
        $this->load->helper('date');
        $this->load->helper('form');

        $this->load->model('User_modification_model', 'umm');
        $this->load->model('Page_model', 'pm');
        if (!$this->session->userdata('user_name')) {
            redirect("login");
        }
    }

    public function index() {

        $this->load->library('session');
        if (!$this->session->userdata('user_name')) {
            redirect("login");
        } else {
            $this->session_data();
            $data['title'] = "User Dashboard";

            $this->load->view('user/index',$data);
        }
    }

	public function orders_history() {
		$data['title'] = "Order History";
		$this->load->model('Add_email_model', 'aem');
		$data['history'] = $this->aem->orders_history();
		$this->load->view('user/order_history',$data);
	}

	// public function member_list() {
    //     $this->session_data();
    //     $this->load->model('add_member_model', 'amm');
    //     $data['data'] = $this->amm->get_member();
    //     $data['title'] = "সদস্যের লিস্ট";
    //     $this->load->view('super_admin/member_list', $data);
    // }
	
	public function orders_history_fatch() {
        $this->session_data();
		$this->load->model('Add_email_model', 'aem');
		$data['title'] = "Order History";
        $data['data'] = $this->aem->orders_history();
		if ($data) {
            $response = array('status' => 'success', 'data' => $data);
        } else {
            $response = array('status' => 'error', 'message' => 'No Orders found.');
        }
		header('Content-Type: application/json');
		echo json_encode($response);
    }

	public function orders_link($product_id) {
		$this->load->model('Add_email_model', 'aem');
        $price = $this->aem->getPrice($product_id);
        if ($price !== false) {
            $response = ['price' => $price];
            $this->output->set_content_type('application/json')->set_output(json_encode($response));
        } else {
            $this->output->set_status_header(404);
            echo "Price not found";
        }
    }
	

	public function update_profile(){
        $data['title']= "Update Your Profile";
        $this->load->view('user/update_profile',$data);
    }

    public function save_update_profile(){
        $this->session_data();
        $this->load->model('User_modification_model', 'umm');
        $dd = $this->umm->update_user_modification();
        $_SESSION['success'] = 'Updated successfully.';
        redirect("user/update_profile");
    }




	    /******* ADD User *******/		
		public function save_user(){
			$this->session_data();
			$this->load->model('Add_email_model', 'aem');
			$this->aem->save_user();
			$data = $this->input->post('data');
			$_SESSION['success'] = 'Sign Up Successfully.';
		}
		// public function job_function_list() {
		// 	$this->session_data();
		// 	$this->load->model('Add_email_model', 'aem');
		// 	$data['title'] = "Job Function List";
		// 	$data['data'] = $this->aem->get_job_function();
		// 	if ($data) {
		// 		$response = array('status' => 'success', 'data' => $data);
		// 	} else {
		// 		$response = array('status' => 'error', 'message' => 'No email data found.');
		// 	}
		// 	header('Content-Type: application/json');
		// 	echo json_encode($response);
		// }

		// public function job_function_list_content() {
		// 	$data['title'] = "Email List";
		// 	$this->load->view('user/job_function_list',$data);
		// }
	

    

}




