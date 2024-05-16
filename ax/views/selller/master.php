<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- start: Meta -->
        <meta charset="utf-8">
        <title>Seller</title>
        <meta name="description" content="Shop Admin Panel Dashboard">
        <meta name="author" content="Rsm Monaem">
        <meta name="keyword" content="Shop Admin Panel Dashboard">
        <!-- end: Meta -->

        <!-- start: Mobile Specific -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- end: Mobile Specific -->

        <!-- start: CSS -->
        <link id="bootstrap-style" href="<?php echo base_url()?>assets/admin/css/bootstrap.min.css" rel="stylesheet">
        <link href="<?php echo base_url()?>assets/admin/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link id="base-style" href="<?php echo base_url()?>assets/admin/css/style.css" rel="stylesheet">
        <link id="base-style-responsive" href="<?php echo base_url()?>assets/admin/css/style-responsive.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
        <!-- end: CSS -->


        <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
                <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
                <link id="ie-style" href="<?php echo base_url()?>assets/admin/css/ie.css" rel="stylesheet">
        <![endif]-->

        <!--[if IE 9]>
                <link id="ie9style" href="<?php echo base_url()?>assets/admin/css/ie9.css" rel="stylesheet">
        <![endif]-->

        <!-- start: Favicon -->
        <link rel="shortcut icon" href="<?php echo base_url()?>assets/admin/img/favicon.jpg">
        <!-- end: Favicon -->


<style>
    .breadcrumb{
        margin-top: 2px;
    }
</style>

    </head>

    <body>


        <div class="container-fluid-full">
            <div class="row-fluid">

                <!-- start: Main Menu -->
                <div id="sidebar-left" class="span2">
                    <div class="nav-collapse sidebar-nav">
                        <ul class="nav nav-tabs nav-stacked main-menu">
                            <li><a href="<?php echo base_url('web/seller_das')?>"><i class="icon-dashboard"></i><span class="hidden-tablet"> Dashboard</span></a></li>	
                        </ul>
                        <ul class="nav nav-tabs nav-stacked main-menu">
                            <li><a href="<?php echo base_url('web/my_orders');?>"><i class="icon-calendar"></i><span class="hidden-tablet"> My  Orders</span></a></li>
                        </ul>
                    </div>
                </div>
                <!-- end: Main Menu -->

                <noscript>
                <div class="alert alert-block span10">
                    <h4 class="alert-heading">Warning!</h4>
                    <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
                </div>
                </noscript>
                
                <?php echo $maincontent;?>
               
            </div><!--/#content.span10-->
        </div><!--/fluid-row-->

        <!--<div class="modal hide fade" id="myModal">-->
        <!--    <div class="modal-header">-->
        <!--        <button type="button" class="close" data-dismiss="modal">×</button>-->
        <!--        <h3>Settings</h3>-->
        <!--    </div>-->
        <!--    <div class="modal-body">-->
        <!--        <p>Here settings can be configured...</p>-->
        <!--    </div>-->
        <!--    <div class="modal-footer">-->
        <!--        <a href="#" class="btn" data-dismiss="modal">Close</a>-->
        <!--        <a href="#" class="btn btn-primary">Save changes</a>-->
        <!--    </div>-->
        <!--</div>-->

        <div class="clearfix"></div>

        <footer>

            <p> <center>
                <span>&copy; <?php echo date("Y"); ?> Ecommerce CodeIgniter - Bootstrap Template By <a href="http://jiji262.github.io/Bootstrap_Metro_Dashboard/" style="color:white;" alt="Bootstrap_Metro_Dashboard">Rsm Monaem</a></span>

            </p></center>

        </footer>

        <!-- start: JavaScript-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="<?php echo base_url()?>assets/admin/js/jquery-1.9.1.min.js"></script>
        <script src="<?php echo base_url()?>assets/admin/js/jquery-migrate-1.0.0.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery-ui-1.10.0.custom.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.ui.touch-punch.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/modernizr.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/bootstrap.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.cookie.js"></script>

        <script src='<?php echo base_url()?>assets/admin/js/fullcalendar.min.js'></script>

        <!--<script src='<?php echo base_url()?>assets/admin/js/jquery.dataTables.min.js'></script>-->

        <script src="<?php echo base_url()?>assets/admin/js/excanvas.js"></script>
        <script src="<?php echo base_url()?>assets/admin/js/jquery.flot.js"></script>
        <script src="<?php echo base_url()?>assets/admin/js/jquery.flot.pie.js"></script>
        <script src="<?php echo base_url()?>assets/admin/js/jquery.flot.stack.js"></script>
        <script src="<?php echo base_url()?>assets/admin/js/jquery.flot.resize.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.chosen.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.uniform.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.cleditor.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.noty.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.elfinder.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.raty.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.iphone.toggle.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.uploadify-3.1.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.gritter.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.imagesloaded.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.masonry.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.knob.modified.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/jquery.sparkline.min.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/counter.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/retina.js"></script>

        <script src="<?php echo base_url()?>assets/admin/js/custom.js"></script>
        <!-- end: JavaScript-->

    </body>
</html>
