<?php

defined('BASEPATH') or exit('No direct script access allowed');

class ManageOrder extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->get_user();
    }

    public function manage_order()
    {
        $data                          = array();
        $data['all_manage_order_info'] = $this->manageorder_model->manage_order_info();
        $data['maincontent']           = $this->load->view('admin/pages/manage_order', $data, true);
        $this->load->view('admin/master', $data);
    }

    public function order_details($order_id)
    {
        $data        = array();
        $order_info  = $this->manageorder_model->order_info_by_id($order_id);
        $customer_id = $order_info->customer_id;
        $shipping_id = $order_info->shipping_id;
        $payment_id  = $order_info->payment_id;

        $data['customer_info']      = $this->manageorder_model->customer_info_by_id($customer_id);
        $data['shipping_info']      = $this->manageorder_model->shipping_info_by_id($shipping_id);
        $data['payment_info']       = $this->manageorder_model->payment_info_by_id($payment_id);
        $data['order_details_info'] = $this->manageorder_model->orderdetails_info_by_id($order_id);
        $data['order_info']         = $this->manageorder_model->order_info_by_id($order_id);

        $data['maincontent'] = $this->load->view('admin/pages/order_details', $data, true);
        $this->load->view('admin/master', $data);
    }

    public function get_user()
    {

        $email = $this->session->userdata('user_email');
        $name  = $this->session->userdata('user_name');
        $id    = $this->session->userdata('user_id');

        if ($email == false) {
            redirect('admin');
        }
    }
    public function manage_users()
    {
        $data                          = array();
        $data['all_manage_order_info'] = $this->manageorder_model->manage_users();
        $data['maincontent']           = $this->load->view('admin/pages/manage_users', $data, true);


        $this->load->view('admin/master', $data);
    }

		 public function edit_user($id) {

            $user_id  = $this->uri->segment(3);
		 	$result = $this->db->get_where('tbl_customer', ['customer_id' => $id])->row();
        
            echo"<pre>";
        print_r($result);
		 //	$this->load->view('super_admin/edit_trainee', $result);
		 }


    
	 function user_delete($user_id) {
		 	
		 	$user_id  = $this->uri->segment(3);
		 	$this->db->where('customer_id', $user_id);
		 	$this->db->delete('tbl_customer');
		 	redirect("ManageOrder/manage_users");
		 }
		 
	function approve_user($customer_id) {
        $customer_id = $this->uri->segment(3);

        $data = array(
            'customer_active' => 1,
        );

        $this->db->where('customer_id', $customer_id);
        $this->db->update('tbl_customer', $data);
        redirect("ManageOrder/manage_users");
    }
    
    function delivered($order_id) {
        $order_id = $this->uri->segment(3);

        $data = array(
            'actions' => 'Delivered',
        );

        $this->db->where('order_id', $order_id);
        $this->db->update('tbl_order', $data);
         redirect("ManageOrder/manage_order");
    }


}
