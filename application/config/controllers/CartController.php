<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CartController extends CI_Controller {

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

    public function index() {
		$data['title'] = 'Your Cart';
		$data['description'] ='Checkout Now' ;
		$data['keywords'] = 'description';
        $this->load->view('home/cart',$data);
    }

    public function add_to_cart() {
        // Get product information
        $product_id = $this->input->post('product_id');
        $product_name = $this->input->post('product_name'); 
        $product_price = $this->input->post('product_price'); 
		$qty = $this->input->post('quantity'); 
		$package_id = $this->input->post('package_id');
        // Add product to cart
        $data = array(
            'id' 			=> $product_id,
            'qty' 			=> $qty,
            'price' 		=> $product_price,
            'name' 			=> $product_name,
			'package_id' 	=> $package_id
        );

        $this->cart->insert($data);

        // Redirect back to the product page or wherever you want
        redirect('cart');
    }

	public function remove_from_cart($rowid) {
		// Get the row ID of the item to be removed
		$data = array(
			'rowid' => $rowid,
			'qty' => 0 // Set the quantity to 0 to remove the item
		);
	
		$this->cart->update($data);
	
		// Redirect back to the cart page
		redirect('cart');
	}
	
}
