<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CheckoutController extends CI_Controller {

    public function index() {
        // Load the checkout view
		$data['title'] = 'Checkout Now';
		$data['description'] ='Checkout Now' ;
		$data['keywords'] = 'description';
        $this->load->view('home/chackout',$data);
    }

    public function process_order() {
        if (!$this->session->userdata('user_type')) {
            redirect('login'); // Replace 'login' with your login page URL
        }
        // Your NowPayments.io API key
        $api_key = 'BA4QNYB-8TM45Y1-Q9XFJB8-9QQ38KV';

		$shipping_address = '250'; // Assuming you have a shipping address form field

		// Fetch cart items and total
		$user_name = $this->session->userdata('user_name');
		$users = $this->db->get_where('admin_user', ['user_name' => $user_name])->row();
		$user_u_id = $users->u_id;

		$cart_items = $this->cart->contents();
		$order_total = $this->cart->total();
		$randomNumber = rand(100000, 999999);
		$order_id = $user_u_id.$randomNumber.$user_u_id;

		$order_data = array();
		
		foreach ($cart_items as $item) {
			// Prepare order data for the current item
			$order_item = array(
				'order_id' => $order_id,
				'product_id' => $item['id'],
				'package_id' => $item['package_id'],
				'quantity' => $item['qty'],
				'user_id' => $user_u_id,
				'user_email' => $this->session->userdata('user_name'),
				'shipping_address' => $shipping_address,
				'price' 		=> $item['price'],
				'subtotal' 		=> $item['subtotal'],
				'order_total' => $order_total,
				'payment_status' => 'Pending',
				'order_delevery_status' => 'Pending',
				'order_date' => date('Y-m-d H:i:s')
			);
		
			// Add the order data for the current item to the array
			$order_data[] = $order_item;
		}
		
		// Insert all order data into the 'orders' table
		$this->db->insert_batch('orders', $order_data);
		

        // Get the inserted order ID
        $order_id_item =  $order_item['order_id'];
        foreach ($cart_items as $item) {
            $order_item_data = array(
                'order_id'		=> $order_id_item,
				'package_id' 	=> $item['package_id'],
                'product_id' 	=> $item['id'],
                'quantity' 		=> $item['qty'],
                'price' 		=> $item['price'],
				'subtotal' 		=> $item['subtotal']
            );
			$order_data[] =  $order_item_data;
            $this->db->insert('order_items', $order_item_data);
        }

        // Process the payment and get the payment status
        $payment_status = $this->process_payment($order_id, $order_total, $api_key);

        // Update the order status based on the payment status
        if ($payment_status === 'completed') {
            $this->db->where('order_id', $order_id);
            $this->db->update('orders', array('payment_status' => 'Completed'));
        } else {
            $this->db->where('order_id', $order_id);
            $this->db->update('orders', array('payment_status' => 'Failed'));
        }

        // Clear the cart after completing the order
        $this->cart->destroy();
    }

	private function process_payment($order_id, $order_total, $api_key) {
		// Define your NowPayments.io cryptocurrency ID (e.g., BTC, ETH)
		$crypto_id = 'btc'; // Replace with the cryptocurrency you want to accept
	
		// Prepare payment data
		$payment_data = array(
			'order_id' => $order_id,
			'price_amount' => $order_total, // Add the price_amount parameter
			'price_currency' => 'usd', // Adjust as needed
			'pay_currency' => $crypto_id,
			'ipn_callback_url' => $this->getCallbackurl($order_total), // Get the correct callback URL
			'success_url' => base_url('payment-success'), // Define a success URL
			'cancel_url' => base_url('payment-cancel'), // Define a cancel URL
		);
	
		// Define the API endpoint URL
		$api_url = 'https://api.nowpayments.io/v1/invoice';
	
		// Initialize cURL
		$ch = curl_init();
	
		// Set cURL options including headers
		$headers = array(
			'x-api-key: ' . $api_key,
			'Content-Type: application/json'
		);
	
		curl_setopt($ch, CURLOPT_URL, $api_url);
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($payment_data));
		curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	
		// Bypass SSL certificate verification
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
	
		// Execute cURL request
		$response = curl_exec($ch);
	
		// Handle the response (you can customize this part based on your requirements)
		if ($response) {
			// Request successful, handle the response data
			$response_data = json_decode($response, true);
			// Do something with $response_data
			// Redirect the user to the payment URL provided in $response_data['invoice_url']
			if (isset($response_data['invoice_url'])) {
				redirect($response_data['invoice_url']);
			} else {
				// Handle payment request failure (e.g., show an error message)
				echo 'Payment request failed: ' . $response_data['message'];
			}
		} else {
			// Request failed
			$error_message = curl_error($ch);
			// Handle the error
			echo 'cURL error: ' . $error_message;
		}
	
		// Close cURL
		curl_close($ch);
	}
	
	

    // Function to generate the correct callback URL based on the order total
    private function getCallbackurl($price) {
        if ($price == 100) {
            return "https://nowpayments.io/payment/?iid=5141999541";
        } elseif ($price == 190) {
            return "https://nowpayments.io/payment/?iid=5141999541";
        } elseif ($price == 400) {
            return "https://nowpayments.io/payment/?iid=5141999541";
        } elseif ($price == 1000) {
            return "https://nowpayments.io/payment/?iid=5141999541";
        } elseif ($price == 1500) {
            return "https://nowpayments.io/payment/?iid=5141999541";
        }
    }
}
