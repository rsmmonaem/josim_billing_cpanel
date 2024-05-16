<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller {

    function __construct() {
        parent::__construct();

        /*cache control*/
        $this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
        $this->output->set_header("Expires: Mon, 26 Jul 2010 05:00:00 GMT");
    }

	public function login_process() {
		$user_name = $this->input->post("user_name");
		$pass_word = $this->input->post("pass_word");
		$status = "DISABLE";
	
		$qry = "SELECT count(*) as cnt from admin_user where user_name= ?";
		$res = $this->db->query($qry, array($user_name))->result();
	
		if ($res[0]->cnt == 0) {
			$this->session->set_flashdata('wrong_username', 'Wrong Username!');
			// Store the current URL in session
			$this->session->set_userdata('redirect_url', current_url());
			redirect("login");
		} else {
			$qry_status = "SELECT count(*) as cnt_status from admin_user where user_name= ? AND status = 'ENABLE'";
			$res_status = $this->db->query($qry_status, array($user_name))->result();
	
			if ($res_status[0]->cnt_status == 0) {
				$this->session->set_flashdata('account_disabled', 'Account Disabled!');
				// Store the current URL in session
				$this->session->set_userdata('redirect_url', current_url());
				redirect("login");
			}
	
			$qry2 = "SELECT count(*) as cnt from admin_user where pass_word= ? AND user_name= ?";
			$res2 = $this->db->query($qry2, array($pass_word, $user_name))->result();
			if ($res2[0]->cnt == 0) {
				$this->session->set_flashdata('wrong_password', 'Wrong PassWord!');
				// Store the current URL in session
				$this->session->set_userdata('redirect_url', current_url());
				redirect("login");
			} else {
				$this->session->set_userdata('user_name', $user_name);
	
				// Check user type
				$this->db->where('user_name', $user_name);
				$user_type = $this->db->get("admin_user")->row()->user_type;
				$this->session->set_userdata('user_type', $user_type);
				$this->db->where('user_name', $user_name);
				$user_id = $this->db->get("admin_user")->row()->user_id;
				$this->session->set_userdata('user_id', $user_id);
				$this->db->where('user_name', $user_name);
				$status = $this->db->get("admin_user")->row()->status;
				$this->session->set_userdata('status', $status);
	
				foreach ($this->cart->contents() as $item) {
					$total_item_price = $item['subtotal'];
					$grand_total += $total_item_price;
				}

				if ($grand_total > 0) {
					redirect('cart');
				} else {
					if ($user_type == "super_admin") {
						redirect("super_admin");
					} elseif ($user_type == "user") {
						redirect("user");
					}
				}
			}
		}
	}
	

    public function logout() {
        $this->session->sess_destroy();
        redirect(base_url());
    }

    public function index() {
        if ($this->session->userdata('user_name')) {
            redirect(base_url());
        } else {
			// $permalink = $this->uri->segment(1);
            // $result = $this->db->get_where('pages', ['page_permalink' => $permalink])->row();	
			
			// if ($result!=null) {
			// 	$data['title'] = $result->page_meta_title;
			// 	$data['description'] = $result->page_meta_desc;
			// 	$data['keywords'] = $result->page_meta_desc;
			// }else{
			// 	$data['title'] = $this->uri->segment(1);
			// 	$data['description'] = 'Book Your Data';
			// 	$data['keywords'] = 'Book Your Data';
			// }
            $this->load->view('home/login');
        }
    }
}
