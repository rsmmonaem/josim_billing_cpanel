<!DOCTYPE HTML>
<head>
    <title>Amrshoping</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <!-- start: Meta -->
    
        <meta name="description" content="AmrShop">
        <meta name="author" content="Rsm Monaem">
        <meta name="keyword" content="Rsm Monaem">
        <!-- end: Meta -->
    <link href="<?php echo base_url() ?>assets/web/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="<?php echo base_url() ?>assets/web/css/menu.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="<?php echo base_url() ?>assets/web/js/jquerymain.js"></script>
    <script type="text/javascript" src="<?php echo base_url() ?>assets/web/js/jquery-1.7.2.min.js"></script> 
    <script type="text/javascript" src="<?php echo base_url() ?>assets/web/js/nav.js"></script>
    <script type="text/javascript" src="<?php echo base_url() ?>assets/web/js/move-top.js"></script>
    <script type="text/javascript" src="<?php echo base_url() ?>assets/web/js/easing.js"></script> 
    <script type="text/javascript" src="<?php echo base_url() ?>assets/web/js/nav-hover.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.22.1/dist/bootstrap-table.min.css">
    <link href='http://fonts.googleapis.com/css?family=Monda' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Doppio+One' rel='stylesheet' type='text/css'>
    <script type="text/javascript">
        $(document).ready(function ($) {
            $('#dc_mega-menu-orange').dcMegaMenu({rowItems: '4', speed: 'fast', effect: 'fade'});
        });
    </script>
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url('uploads/'); ?><?php echo get_option('site_logo'); ?>" />
</head>
<body>
    <div class="wrap" style="
    margin: 0;
    padding: 15px;
    width: 100%;
">
        <div class="header_top">
            <div class="logo">
                <a href="<?php echo base_url('/'); ?>"><img style="
    border: 2px solid #8BC34A;
    height: 124px;
    margin-top: -12px;
"src="<?php echo base_url('uploads'); ?>/logo.png" alt="" /></a>
            </div>
            <div class="header_top_right">
                <div class="search_box">
                    <form method="get" action="<?php echo base_url('search')?>">
                        <input type="text" placeholder="Search for Products" name="search">
                        <input type="submit" value="SEARCH">
                    </form>
                </div>
                <?php
                
                ?>
                <div class="shopping_cart">
                    <div class="cart">
                        
                        <a href="<?php echo base_url('cart');?>" title="View my shopping cart" rel="nofollow">
                        <?php
                                     if ($this->session->userdata('customer_email')) {
                                        echo '<span class="cart_title">Cart</span>';
                                    }
                        ?>
                           
                            <span class="no_product">(<?php echo $this->cart->total_items();?> 
                            <?php if ($this->session->userdata('customer_email')) {
                                        echo 'Items';
                                    }  
                                    ?>                        
                            )
                        </span>
                        </a>
                    </div>
                </div>
                <?php
                $customer_id = $this->session->userdata('customer_id');
                if ($customer_id) {
                    ?>
                    <div class="login"><a href="<?php echo base_url('/customer/logout'); ?>">Logout</a></div>
                <?php } else {
                    ?>
                    <div class="login"><a style="
    text-decoration: none;
" href="<?php echo base_url('/customer/login'); ?>">Login</a></div>

                    <?php
                }
                ?>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="menu">
<ul id="dc_mega-menu-orange" style="float:left;background: #8BC34A;border-radius: 6px;border: 1px solid #000000;" class="dc_mm-orange">
<li class="<?php
                if ($this->uri->uri_string() == '') {
                    echo "active";
                }
                ?>"><a href="<?php echo base_url('/'); ?>">Home</a></li>
                <li class="<?php
                if ($this->uri->uri_string() == 'product') {
                    echo "active";
                }
                ?>"><a href="<?php echo base_url('/product'); ?>">Products</a> </li>
                    <?php if ($this->cart->total_items()) { ?>
                    <li class="<?php
                    if ($this->uri->uri_string() == 'cart') {
                        echo "active";
                    }
                    ?>"><a href="<?php echo base_url('/cart'); ?>">Cart</a></li>
                    <?php } ?>
                <li class="<?php
                if ($this->uri->uri_string() == 'contact') {
                    echo "active";
                }
                ?>"><a href="<?php echo base_url('/contact'); ?>">Contact</a> </li>
                
                <?php if(!$this->session->userdata('customer_id')){?>
                
                <li class="<?php
                if ($this->uri->uri_string() == 'customer/register') {
                    echo "active";
                }
                ?>">
                    <a href="<?php echo base_url('/customer/register'); ?>">Register</a> </li>
                
                <?php }?>
                
                <?php
                $customer_id = $this->session->userdata('customer_id');
                if ($customer_id) {
                    ?>
                    <li><a href="<?php echo base_url('/seller_das'); ?>">Dashboard</a> </li>
                <?php }?>
                
                
            </ul>
            <div class="clear"></div>
        </div>
        
        <style>
    @media screen and (min-width: 321px) and (max-width: 480px) {
  body {
    font-size: 16px; 
  }
  .container {
    width: 90%; 
    margin: 0 auto; 
  }
  
  #hide{
         display: none;
  }
  
/*  #cara{*/
/*     margin-top: -304px;*/
/*    justify-content: center;*/
/*    text-align: center;*/
/*}*/
#nextsec{
    
}
  
  
  
  
    }
    
    @media only screen and (max-width:1024px) {
	ul.dc_mm-orange li a {
		padding:20px 13px;
		font-size:14px;
		color: #8BC34A;
	}
	ul.dc_mm-orange li a .dc-mega-icon {
		right:3px;
	}	
}
  
</style>