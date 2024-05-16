

<div class="main">
    <div class="content" style="text-align: center">
        <div class="register_account" style="text-align:center;display:inline-block;float: none">
            <h3>Your Shipping Address</h3>
            <style type="text/css">
                #result{color:red;padding: 5px}
                #result p{color:red}
            </style>
            <div id="result">
                <p><?php echo $this->session->flashdata('message'); ?></p>
            </div>
            <form method="post" action="<?php echo base_url('customer/save/shipping/address');?>">
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <div>
                                    <input type="text" name="shipping_name" placeholder="Enter Customer Name">
                                </div>


                                <div>
                                    <input type="text" name="shipping_city" placeholder="Enter Customer City">
                                </div>
                                <div>
                                    <input type="text" name="shipping_phone" placeholder="Enter Customer Phone">
                                </div>
                                <div>
                                    <input type="text" name="shipping_zipcode" placeholder="Notes">
                                </div>
                            </td>
                            <td>
                                <div>
                                    <input type="text" name="shipping_email" placeholder="Enter Customer Email">
                                </div>
                                <!-- <input type="text" name="shipping_email" placeholder="Enter Your Email">  
                                value="<?=$reseller['reseller']?>"  -->
                                <div>
                                    <input type="text" name="shipping_address" placeholder="Enter Customer Address">
                                </div>
                                
                                <div>
                                    <select id="country" name="shipping_country" class="frm-field required">
                                        <option value="null">Select a Country</option>         
                                        <option value="Bangladesh">Bangladesh</option>

                                    </select>
                                </div>		

                                
                            </td>
                        </tr> 
                    </tbody></table> 
                <div class="search"><div><button class="grey">Place Order</button></div></div>
                <p class="terms">By clicking 'Place Order' you agree to the <a href="#">Terms &amp; Conditions</a>.</p>
                <div class="clear"></div>
            </form>
        </div>  	
        <div class="clear"></div>
    </div>
</div>