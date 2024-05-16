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
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon user"></i><span class="break"></span>Manage Product</h2>
                <div class="box-icon">
                    <a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
                    <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                </div>
            </div>
            
            <style type="text/css">
                #result{color:red;padding: 5px}
                #result p{color:red}
            </style>
            <div id="result">
                <p><?php echo $this->session->flashdata('message'); ?></p>
            </div>
            
            <div class="box-content">
                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                        <tr>
                            <th>Sr.</th>
                            <th>Customer Name</th>
                            <th>Customer Phone</th>
                            <th>Customer E-mail</th>
                            <th>Address</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>   
                    <tbody>
                        <?php 
                        $i=0;
                        foreach($all_manage_order_info as $users){
                            $i++;
                            ?>
                        <tr>
                            <td><?php echo $i;?></td>
                            <td><?php echo $users->customer_name?></td>
                            <td><?php echo $users->customer_phone?></td>
                            <td><?php echo $users->customer_email?></td>
                            <td><?php echo $users->customer_address?></td>
                            <td><?php echo $users->customer_active?></td>                            
                            <td>
<!--                                 
                                <a class="btn btn-info" href="<?php echo base_url('edit_users'.$users->order_id);?>">Edit</a>
                                <a class="btn btn-success" href="<?php echo base_url('delete_users'.$users->order_id);?>">Delete</a> -->
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