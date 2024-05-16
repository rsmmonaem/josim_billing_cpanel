

<div class="main">
    <div class="content" style="text-align: center">
        <div class="container" style="text-align:center;display:inline-block;float: none">
            <h3>Register New Account</h3>
            <style type="text/css">
                #result{color:red;padding: 5px}
                #result p{color:red}
            </style>
            <style>
    .form-label {
    margin-bottom: 0.5rem;
    float: left;

}
.register_account form select {
    width: 342px;
    color: #666;
}
</style>
            <div id="result">
                <p><?php echo $this->session->flashdata('message'); ?></p>
            </div>
            <form method="post" action="<?php echo base_url('customer/save');?>">

                <div class="row">
                    <div class="col-md-6">
                            <div class="mb-3 ">
                                <label for="exampleFormControlInput1" class="form-label">Name</label>
                                <input type="text" name="customer_name" placeholder="Enter Your Name" class="form-control" id="exampleFormControlInput1" >
                            </div>
                    </div>

                    <div class="col-md-6">
                            <div class="mb-3 ">
                                <label for="exampleFormControlInput1" class="form-label">Password</label>
                                <input  type="text" name="customer_password" placeholder="Enter Your Password" class="form-control" id="exampleFormControlInput1" >
                            </div>
                    </div>

                    <div class="col-md-6">
                            <div class="mb-3 ">
                                <label for="exampleFormControlInput1" class="form-label">City</label>
                                <input type="text" name="customer_city" placeholder="Enter Your City" class="form-control" id="exampleFormControlInput1" >
                            </div>
                    </div>

                    <div class="col-md-6">
                            <div class="mb-3 ">
                                <label for="exampleFormControlInput1" class="form-label">Phone</label>
                                <input type="text" name="customer_phone" placeholder="Enter Your Phone" class="form-control" id="exampleFormControlInput1" >
                            </div>
                    </div>


                    <div class="col-md-6">
                            <div class="mb-3 ">
                                <label for="exampleFormControlInput1" class="form-label">Email address</label>
                                <input  type="text" name="customer_email" placeholder="Enter Your Email" class="form-control" id="exampleFormControlInput1" >
                            </div>
                    </div>


                    <div class="col-md-6">
                            <div class="mb-3 ">
                                <label for="exampleFormControlInput1" class="form-label">Address</label>
                                <input type="text" name="customer_address" placeholder="Enter Your Address" class="form-control" id="exampleFormControlInput1" >
                            </div>
                    </div>
                    <div class="col-md-6">
                            <div class="mb-3 ">
                                <label for="exampleFormControlInput1" class="form-label">ZipCode</label>
                                <input type="text" name="customer_zipcode" placeholder="Enter Your ZipCode" class="form-control" id="exampleFormControlInput1" >
                            </div>
                    </div>
                 <input type="hidden" name="customer_country" value="BD" placeholder="Enter Your country" class="form-control" id="exampleFormControlInput1" >

                    <!--<div class="col-md-6">-->
                    <!--        <div class="mb-3 ">-->
                                <!--<label for="exampleFormControlInput1" class="form-label">country</label>-->
                    <!--            <input type="hidden" name="customer_country" value="BD" placeholder="Enter Your country" class="form-control" id="exampleFormControlInput1" >-->
                    <!--        </div>-->
                    <!--</div>-->
                    <div class="col-md-6">
                            <div class="mb-3 ">
                                <label for="exampleFormControlInput1" class="form-label">Our Bkash Number</label>
                                <input type="text" name="" placeholder="Enter Your country" value="+8001646362477" class="form-control" id="exampleFormControlInput1" readonly >
                            </div>
                    </div>
                    <div class="col-md-6">
                            <div class="mb-3 ">
                                <label for="exampleFormControlInput1" class="form-label">Amount</label>
                                <input type="number" name="" value="2000" placeholder="2000" class="form-control" readonly >
                            </div>
                    </div>
                    
                    <div class="col-md-6">
                            <div class="mb-3 ">
                                <label for="exampleFormControlInput1" class="form-label">Your BKash Number</label>
                                <input type="text" name="payment_number" placeholder="019**********" class="form-control" id="exampleFormControlInput1" >
                            </div>
                    </div>
                    

                    <div class="col-md-6">
                            <div class="mb-3 ">
                                <label for="exampleFormControlInput1" class="form-label">TNX ID</label>
                                <input type="text" name="payment_id" placeholder="TRX-****" class="form-control" id="exampleFormControlInput1" >
                            </div>
                    </div>
                    

                    <div class="search"><div><button class="grey">Create Account</button></div></div>
                <p class="terms">By clicking 'Create Account' you agree to the <a href="#">Terms &amp; Conditions</a>.
                Your Account Will Active Within 5 minutes
                </p>
                <div class="clear"></div>
                </div>
                
            </form>
        </div>  	
        <div class="clear"></div>
    </div>
</div>