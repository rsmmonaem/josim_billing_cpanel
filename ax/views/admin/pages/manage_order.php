<!-- start: Content -->
<div id="content" class="span10">


    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="<?php echo base_url('dashboard')?>">Home</a> 
            <i class="icon-angle-right"></i>
        </li>
        <li><a href="<?php echo base_url('manage/product')?>">Manage Product</a></li>
    </ul>

    <div class="row-fluid sortable">		
        <div class="box span12">
            <!--<div class="box-header" data-original-title>-->
            <!--    <h2><i class="halflings-icon user"></i><span class="break"></span>Manage Product</h2>-->
            <!--</div>-->
            

            <div id="result">
                <p><?php echo $this->session->flashdata('message'); ?></p>
            </div>
            <!--table table-striped table-bordered bootstrap-datatable datatable-->
            <div class="box-content">
                <table class="">
                    <thead>
                        <tr>
                            <th>Sr.</th>
                            <th>Customer Name</th>
                            <th>Customer Number</th>
                            <th>Customer Phone</th>
                            <th>Total Amount</th>
                            <th>Actions</th>
                        </tr>
                    </thead>   
                    <tbody>
                        <?php 
                        $i=0;
                        foreach($all_manage_order_info as $single_order){
                            $i++;
                            ?>
                        <tr>
                            <td><?php echo $i;?></td>
                            <td><?php echo $single_order->customer_name?></td>
                            <td><?php echo $single_order->customer_phone?></td>
                            <td><?php echo $single_order->customer_email?></td>
                            <td><?php echo $this->cart->format_number($single_order->order_total)?> TK.</td>
                            <td>
                                
                                <a class="btn btn-info" href="<?php echo base_url('order/details/'.$single_order->order_id);?>">View</a>
                                <a class="btn btn-success" href="<?php echo base_url('web/pdf/'.$single_order->order_id);?>">Download</a>
                                <a class="btn btn-success" href="<?php echo base_url('ManageOrder/Delivered/'.$single_order->order_id);?>">Delivered</a>
                                
                            </td>
                        </tr>
                        <?php }?>
                    </tbody>
                </table>            
            </div>
        </div><!--/span-->

    </div><!--/row-->



</div><!--/.fluid-container-->

<!-- end: Content -->