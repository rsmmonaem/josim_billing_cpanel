<!-- start: Content -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
    /* Add the following CSS for responsiveness */
    @media (max-width: 768px) {
        table.table {
            width: 100%;
            margin-bottom: 20px;
        }
        table.table thead {
            display: none;
        }
        table.table tr {
            border-bottom: 2px solid #ddd;
            display: block;
            margin-bottom: 20px;
        }
        table.table td {
            display: block;
            text-align: right;
            font-size: 14px;
            border-bottom: 1px dotted #ccc;
            position: relative;
            padding-left: 50%;
        }
        table.table td:before {
            position: absolute;
            top: 6px;
            left: 6px;
            width: 45%;
            padding-right: 10px;
            white-space: nowrap;
        }
    }
</style>


<div id="content" class="span10">


    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="<?php echo base_url('web/seller_das')?>">Home</a> 
            <i class="icon-angle-right"></i>
        </li>
        <li><a href="<?php echo base_url('web/my_orders')?>">My Orders</a></li>
    </ul>

    <div class="row-fluid sortable">		
        <div class="box span12">
            
            <style type="text/css">
                #result{color:red;padding: 5px}
                #result p{color:red}
            </style>
            <!-- <div id="result">
                <p><?php echo $this->session->flashdata('message'); ?></p>
            </div> -->
            
            <div class="box-content">
                 <div class="table-responsive">
                    <table class="table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                        <tr>
                            <th>Sr.</th>
                            <th>order_details_id</th>
                            <th>order_id</th>
                            <th>product_id</th>
                            <th>name</th>
                            <th>price</th>
                            <th>quantity</th>
                            <th>product_image</th>
                            <th>reseller_profit</th>
                        </tr>
                    </thead>   
                    <tbody>
                        <?php 
                        $i=0;
                        foreach($data as $single_order){
                            $i++;
                            ?>
                        <tr>
                            <td><?php echo $i;?></td>
                            <td><?php echo $single_order->order_details_id?></td>
                            <td><?php echo $single_order->order_id?></td>
                            <td><?php echo $single_order->product_id?></td>
                            <td><?php echo $single_order->product_name?></td>
                            <td><?php echo $single_order->product_price?></td>
                            <td><?php echo $single_order->product_sales_quantity?></td>
                            <td>
                                <img style="width: 80px;" src="<?= base_url() ?>uploads/<?= $single_order->product_image ?>">
                               
                            </td>
                            <td><?php echo $single_order->reseller_profit?></td>

                            <td>
                                <a class="btn btn-danger btn-sm" onclick="return confirm('Want to delete?');" href="<?= base_url() ?>web/delete_order/<?= $single_order->order_id  ?>" data-placement="top" data-toggle="tooltip" data-original-title="Delete">
                                                <i class="fas fa-trash"></i> Delete
                                </a>
                            </td>
                        </tr>
                        
                        <?php }?>

                    </tbody>
                </table> 
                 </div>
            </div>
        </div><!--/span-->

    </div><!--/row-->



</div><!--/.fluid-container-->

<!-- end: Content -->