<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Super_admin extends CI_Controller {


    function __construct() {
        parent::__construct();
        $this->load->helper('form');
		$this->load->library('cart');
        /*cache control*/
        $this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
        $this->output->set_header("Expires: Mon, 26 Jul 2010 05:00:00 GMT");
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
            $data['title'] = "Dashboard";
            $this->load->view('super_admin/index',$data);
        }
    }

/******* Save User *******/		
		public function save_user(){
			$this->session_data();
			$this->load->model('add_entry_model', 'aem');
			$this->aem->save_user();
			$data = $this->input->post('data');
			$_SESSION['success'] = 'Sign Up Successfully.';
		}
/******* End Save User *******/		

/******* ADD Email *******/
    public function add_entry(){
        $this->session_data();
        $data['title'] = "Add New Email";
        $this->load->view('super_admin/add_entry',$data);
    }
	
	public function save_entry(){
        $this->session_data();
		$this->load->model('add_entry_model', 'aem');
        $this->aem->add_entry();
		$data = $this->input->post('data');
        $_SESSION['success'] = 'Email Added successfully.';
    }

	public function entry_list() {
		$this->session_data();
		$this->load->model('add_entry_model', 'aem');
		$data['title'] = "(Md. Joshim) Am Printing - Statement - 2024";
		$data['entry_data'] = $this->aem->get_entry();
		if ($data['entry_data']) {
			$response = array('status' => 'success', 'data' => $data);
		} else {
			$response = array('status' => 'error', 'message' => 'No entry data found.');
		}
		$response['current_balance'] = $data['entry_data']['currentBalance']; // Add current balance to the response
		header('Content-Type: application/json');
		echo json_encode($response);
	}
	

	public function entry_list_content() {
		$data['title'] = "Email List";
		$this->load->view('super_admin/entry_list',$data);
	}

	public function edit_email($id) {
		$data['title'] = "Update";
		$data['email_id'] = $id;
		$this->load->model('add_entry_model', 'aem');
		$data['page_data'] = $this->aem->edit_email($id);
		$this->load->view('super_admin/edit_email', $data);
	}
	
	public function update_email() {
		$this->session_data();
		$this->load->model('add_entry_model', 'aem');
		$this->aem->update_email();
		redirect('super_admin/entry_list_content');
	}

	public function delete_entry() {
		$id = $this->input->post('id'); // Retrieve the job function ID from POST data
		$this->load->model('add_entry_model', 'aem');
		$result = $this->aem->delete_entry($id);
		if ($result) {
			$response = array(
				'status' => 'success',
				'message' => 'Deleted successfully.'
			);
		} else {
			$response = array(
				'status' => 'error',
				'message' => 'Deletion failed.'
			);
		}
		header('Content-Type: application/json');
		echo json_encode($response);
	}
	
/******* End Email *******/

/******* ADD Job Function *******/
		public function add_job_function(){
			$this->session_data();
			$data['title'] = "Add New Job Function";
			$this->load->view('super_admin/add_job_function',$data);
		}
		
		public function save_job_function(){
			$this->session_data();
			$this->load->model('add_entry_model', 'aem');
			$this->aem->add_job_function();
			$data = $this->input->post('data');
			$_SESSION['success'] = 'Job Function Added Successfully.';
			redirect('super_admin/job_function_list_content');

		}
		public function job_function_list() {
			$this->session_data();
			$this->load->model('add_entry_model', 'aem');
			$data['title'] = "Job Function List";
			$data['data'] = $this->aem->get_job_function();
			if ($data) {
				$response = array('status' => 'success', 'data' => $data);
			} else {
				$response = array('status' => 'error', 'message' => 'No email data found.');
			}
			header('Content-Type: application/json');
			echo json_encode($response);
		}

		public function job_function_list_content() {
			$data['title'] = "Email List";
			$this->load->view('super_admin/job_function_list',$data);
		}

		public function edit_job_function($id) {
			$data = array();
			$data['title'] = "Update";
			$data['job_function_id'] = $id;
			$this->load->model('add_entry_model', 'aem');
			$data['page_data'] = $this->aem->edit_job_function($id);
			$this->load->view('super_admin/edit_job_function', $data);
		}
		
		public function update_job_function() {
			$this->session_data();
			$this->load->model('add_entry_model', 'aem');
			$this->aem->update_job_function();
			$_SESSION['success'] = 'Updated successfully.';
			redirect('super_admin/job_function_list_content');
		}

		public function delete_job_function() {
			$id = $this->input->post('id'); // Retrieve the job function ID from POST data
			$this->load->model('add_entry_model', 'aem');
			$result = $this->aem->delete_job_function($id);
			if ($result) {
				$response = array(
					'status' => 'success',
					'message' => 'Deleted successfully.'
				);
			} else {
				$response = array(
					'status' => 'error',
					'message' => 'Deletion failed.'
				);
			}
			header('Content-Type: application/json');
			echo json_encode($response);
		}
		
/******* End Job Function *******/

/******* Order's *******/
		public function all_orders() {
			$data['title'] = "All Orders";
			$this->load->view('super_admin/all_orders',$data);
		}
		
		public function orders_fatch() {
			$this->session_data();
			$this->load->model('Manage_orders_model', 'mom');
			$data['title'] = "All Orders";
			$data['data'] = $this->mom->all_orders();
			if ($data) {
				$response = array('status' => 'success', 'data' => $data);
			} else {
				$response = array('status' => 'error', 'message' => 'No Orders found.');
			}
			header('Content-Type: application/json');
			echo json_encode($response);
		}

		public function edit_orders($id) {
			$data['title'] = "Update";
			$data['entry_list_database_id'] = $id;
			$this->load->model('Manage_orders_model', 'mom');
			$data['page_data'] = $this->mom->edit_orders($id);
			$this->load->view('super_admin/edit_orders', $data);
			//$this->output->set_content_type('application/json')->set_output(json_encode($data));
		}

		public function update_orders() {
			$this->session_data();
			$this->load->model('Package_model', 'pkg');
			$this->pkg->update_package();
			$_SESSION['success'] = 'Package Updated successfully.';
			redirect('super_admin/package_list');
		}
/******* End Order's *******/

/******* User Management *******/
		public function update_profile(){
			$data['title']= "Update Your Profile";
			$this->load->view('super_admin/update_profile',$data);
		}

		public function save_update_profile(){
			$this->session_data();
			$this->load->model('User_modification_model', 'umm');
			$dd = $this->umm->update_user_modification();
			$_SESSION['success'] = 'Updated successfully.';
			redirect("super_admin/update_profile");
		}
/******* User Management *******/	

/******* SEO Page Management *******/
		public function add_page_for_seo(){
			$data['title']= "Add Page For SEO ";
			$this->load->view('super_admin/add_page_for_seo',$data);
		}

		public function save_page_for_seo(){
			$this->session_data();
			$this->load->model('Seo_model', 'seo');
			$this->seo->save_page_for_seo();
			$data = $this->input->post('data');
			$response = array('message' => 'SEO Added Successfully.');
			$this->output
				->set_content_type('application/json')
				->set_output(json_encode($response));
		}

		public function page_for_seo_list(){
			$data['title']= "Page For SEO List";
			$this->load->view('super_admin/page_for_seo_list',$data);
		}

		public function page_for_seo_list_content() {
			$this->session_data();
			$this->load->model('Seo_model', 'seo');
			$data['title'] = "List SEO";
			$data['data'] = $this->seo->page_for_seo_list_content();
			if ($data) {
				$response = array('status' => 'success', 'data' => $data);
			} else {
				$response = array('status' => 'error', 'message' => 'No Orders found.');
			}
			header('Content-Type: application/json');
			echo json_encode($response);
		}

		public function edit_page_for_seo($page_id) {
			$data['title'] = "Update";
			$data['page_id'] = $page_id;
			$this->load->model('Seo_model', 'seo');
			$data['page_data'] = $this->seo->edit_page_for_seo($page_id);
			$this->load->view('super_admin/edit_page_for_seo', $data);
		}

		public function update_page_for_seo() {
			$this->session_data();
			$this->load->model('Seo_model', 'seo');
			$this->seo->update_page_for_seo();
			$_SESSION['success'] = 'Member Updated successfully.';
			redirect('super_admin/page_for_seo_list');
		}

		public function delete_page_for_seo() {
			$id = $this->input->post('id'); // Retrieve the job function ID from POST data
			$this->load->model('Seo_model', 'seo');
			$result = $this->seo->delete_page_for_seo($id);
			if ($result) {
				$response = array(
					'status' => 'success',
					'message' => 'Deleted successfully.'
				);
			} else {
				$response = array(
					'status' => 'error',
					'message' => 'Deletion failed.'
				);
			}
			header('Content-Type: application/json');
			echo json_encode($response);
		}
/******* SEO Page Management *******/

/******* Package Management *******/
		public function add_package(){
			$data['title']= "Add Package ";
			$this->load->view('super_admin/add_package',$data);
		}

		public function save_package() {
			$this->session_data();
			$this->load->model('Package_model', 'pkg');
			$this->pkg->save_package();
			$data = $this->input->post('data');
			// $response = array('message' => 'Package Added Successfully.');
			// $this->output
			// 	->set_content_type('application/json')
			// 	->set_output(json_encode($response));
		}
		

		public function package_list(){
			$data['title']= "Package List";
			$this->load->view('super_admin/package_list',$data);
		}

		public function package_list_content() {
			$this->session_data();
			$this->load->model('Package_model', 'pkg');
			$data['title'] = "List Package";
			$data['data'] = $this->pkg->package_list_content();
			if ($data) {
				$response = array('status' => 'success', 'data' => $data);
			} else {
				$response = array('status' => 'error', 'message' => 'No package found.');
			}
			header('Content-Type: application/json');
			echo json_encode($response);
		}

		public function edit_package($id) {
			$data['title'] = "Update";
			$data['entry_list_database_id'] = $id;
			$this->load->model('Package_model', 'pkg');
			$data['page_data'] = $this->pkg->edit_package($id);
			$this->load->view('super_admin/edit_package', $data);
			// $this->output->set_content_type('application/json')->set_output(json_encode($data));
		}

		public function update_package() {
			$this->session_data();
			$this->load->model('Package_model', 'pkg');
			$this->pkg->update_package();
			$_SESSION['success'] = 'Package Updated successfully.';
			redirect('super_admin/package_list');
		}

		public function delete_package() {
			$id = $this->input->post('id'); // Retrieve the job function ID from POST data
			$this->load->model('Package_model', 'pkg');
			$result = $this->pkg->delete_package($id);
			if ($result) {
				$response = array(
					'status' => 'success',
					'message' => 'Deleted successfully.'
				);
			} else {
				$response = array(
					'status' => 'error',
					'message' => 'Deletion failed.'
				);
			}
			header('Content-Type: application/json');
			echo json_encode($response);
		}
/******* SEO Page Management *******/

/******* Footer Link Management *******/
public function add_footer_link(){
	$data['title']= "Add Footer Link ";
	$this->load->view('super_admin/add_footer_link',$data);
}

public function save_footer_link() {
	$this->session_data();
	$this->load->model('Package_model', 'pkg');
	$this->pkg->save_footer_link();
	$data = $this->input->post('data');
	// $response = array('message' => 'Package Added Successfully.');
	// $this->output
	// 	->set_content_type('application/json')
	// 	->set_output(json_encode($response));
}
}




