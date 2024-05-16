

<div class="main">
    <div class="content" style="text-align: center">
        <div class="register_account" style="text-align:center;display:inline-block;float: none">
            <h3>Payment Options</h3>
            <style type="text/css">
                #result{color:red;padding: 5px}
                #result p{color:red}
            </style>
            <div id="result">
                <p><?php echo $this->session->flashdata('message'); ?></p>
            </div>
            <form method="post" action="<?php echo base_url('save/order');?>" style="text-align: left">
<!--                <span><input type="radio" name="payment" value="cashon"/>Cash On Delivary</span><br/>-->
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" name="" id="" placeholder="+8001646362477" readonly="readonly" disabled>
                    </div>
                    <div class="col-md-6">
                        <input type="text" name="amount" id="" value="<?=$order_total?>" placeholder="<?=$order_total?>" readonly="readonly">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" name="payment" id="" placeholder="Enter you bkash number">
                    </div>
                    <div class="col-md-6">
                        <input type="text" name="payment_trx" id="" placeholder="Bkash Trxid">
                    </div>
                </div>


                <div class="search text-center"><div><button class="grey">Order Now</button></div></div>


                <!--<span><input type="radio" name="payment" value="ssl"/>SSL Wocommerz</span><br/>-->
                <!--<span><input type="radio" name="payment" value="paypal"/>Paypal</span><br/><br/>-->

            </form>

        </div>
        <div class="clear"></div>
    </div>
</div>
