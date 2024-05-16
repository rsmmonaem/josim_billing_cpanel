<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function nowpayments_create_invoice($amount, $currency, $description, $order_id) {
    $api_key = 'YOUR_API_KEY'; // Replace with your NowPayments.io API key

    $url = 'https://api.nowpayments.io/v1/invoice';
    $data = [
        'price_amount' => $amount,
        'price_currency' => $currency,
        'order_id' => $order_id,
        'order_description' => $description,
        'ipn_callback_url' => base_url('payment-callback'), // Define a callback URL
    ];

    $headers = [
        'x-api-key: ' . $api_key,
    ];

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    $response = curl_exec($ch);
    curl_close($ch);

    return json_decode($response, true);
}
