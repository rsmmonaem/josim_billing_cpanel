<!-- start: Content -->
<div id="content" class="span10">


    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="<?php echo base_url('web/seller_das')?>">Home</a> 
            <i class="icon-angle-right"></i>
        </li>
        <li><a href="#">Dashboard</a></li>
    </ul>

   	

	
   
    <div class="row-fluid">	

    <div class="row mt-3 order_details">
            <div class="col-md-4 col-sm-4 col-xs-4">
                <div class="card bg-white text-right p-2 mb-2" onclick="window.location.href=''" style="cursor: pointer">
                    <h4 class="text-uppercase">Total Orders</h4>
                    <span class="font-weight-bold number"><?php echo $total_orders; ?></span>
                </div>
            </div>

            <!--<div class="col-md-4 col-sm-4 col-xs-4">-->
            <!--    <div class="card bg-white text-right p-2 mb-2" onclick="window.location.href=''" style="cursor: pointer">-->
            <!--        <h4 class="text-uppercase">Current Balance</h4>-->
            <!--        <span class="font-weight-bold number">31.40</span>-->
            <!--    </div>-->
            <!--</div>-->
            
            <div class="col-md-4 col-sm-4 col-xs-4">
                <div class="card bg-white text-right p-2 mb-2" onclick="window.location.href=''" style="cursor: pointer">
                    <h4 class="text-uppercase">My Total Earning</h4>
                    <span class="font-weight-bold number">
                    <?php echo $total_earning; ?>
                    </span>
                </div>
            </div>

            <!--<div class="col-md-4 col-sm-4 col-xs-4">-->
            <!--    <div class="card bg-white text-right p-2 mb-2" onclick="window.location.href=''" style="cursor: pointer">-->
            <!--        <h4 class="text-uppercase">Last Payment</h4>-->
            <!--        <span class="font-weight-bold number">6,161.85</span>-->
            <!--    </div>-->
            <!--</div>-->

            <div class="col-md-4 col-sm-4 col-xs-4">
                <div class="card bg-white text-right p-2 mb-2" onclick="window.location.href=''" style="cursor: pointer">
                    <h4 class="text-uppercase">Delivered</h4>
                    <span class="font-weight-bold number"><?php echo $delivered_orders; ?></span>
                </div>
            </div>

            <div class="col-md-4 col-sm-4 col-xs-4">
                <div class="card bg-white text-right p-2 mb-2" onclick="window.location.href=''" style="cursor: pointer">
                    <h4 class="text-uppercase">In Progress</h4>
                    <span class="font-weight-bold number"><?php echo $pending_orders; ?></span>
                </div>
            </div>

            <!--<div class="col-md-4 col-sm-4 col-xs-4">-->
            <!--    <div class="card bg-white text-right p-2 mb-2" onclick="window.location.href=''" style="cursor: pointer">-->
            <!--        <h4 class="text-uppercase">Returned</h4>-->
            <!--        <span class="font-weight-bold number">0</span>-->
            <!--    </div>-->
            <!--</div>-->
        </div>



</div><!--/.fluid-container-->

<!-- end: Content -->