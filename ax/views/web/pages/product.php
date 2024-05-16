<!DOCTYPE HTML>
<head>
    <title>Amrshoping</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
"src="<?php echo base_url('uploads'); ?>/logox.jpeg" alt="" /></a>
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
                    <div class="login"><a href="<?php echo base_url('/customer/login'); ?>">Login</a></div>

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
                if ($this->uri->uri_string() == 'customer/login') {
                    echo "active";
                }
                ?>"><a href="<?php echo base_url('/customer/login'); ?>">Login</a> </li>
                <li class="<?php
                if ($this->uri->uri_string() == 'customer/register') {
                    echo "active";
                }
                ?>"><a href="<?php echo base_url('/customer/register'); ?>">Register</a> </li>
                
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
<div class="main">
    <div class="content">
        <div class="content_top">
            <div class="heading">
                <h3>Shop Page</h3>
            </div>
            <div class="clear"></div>
        </div>

        <?php
        $arr_chunk_product = array_chunk($get_all_product, 4);

        foreach ($arr_chunk_product as $chunk_products) {
            ?>
            <div class="section group">
                <?php foreach ($chunk_products as $single_products) { ?>
                    <div class="grid_1_of_4 images_1_of_4">
                        <a href="<?php echo base_url('single/'.$single_products->product_id);?>"><img style="width:250px;height:250px" src="<?php echo base_url('uploads/'.$single_products->product_image)?>" alt="" /></a>
                        <h2><?php echo $single_products->product_title ?></h2>
                        <p><?php echo word_limiter($single_products->product_short_description, 10) ?></p>
                        <p><span class="price"><?php 
                        if ($this->session->userdata('customer_email')) {
                            echo $this->cart->format_number($single_products->product_price);
                        }else{
                            echo 'Please Login to see Price';
                        }
                        
                        ?> Tk.</span></p>
                        <div class="button"><span><a href="<?php echo base_url('single/'.$single_products->product_id);?>" class="details">Details</a></span></div>
                    </div>
                    <?php
                }
                ?>

            </div>
            <?php
        }
        ?>


    </div>
</div>

<div class="footer">
    <div class="wrapper">	
        <div class="section group">
            <div class="col_1_of_4 span_1_of_4">
                <h4>Information</h4>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Customer Service</a></li>
                    <li><a href="#"><span>Advanced Search</span></a></li>
                    <li><a href="#">Orders and Returns</a></li>
                    <li><a href="#"><span>Contact Us</span></a></li>
                </ul>
            </div>
            <div class="col_1_of_4 span_1_of_4">
                <h4>Why buy from us</h4>
                <ul>
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="faq.html">Customer Service</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="contact.html"><span>Site Map</span></a></li>
                    <li><a href="preview.html"><span>Search Terms</span></a></li>
                </ul>
            </div>
            <div class="col_1_of_4 span_1_of_4">
                <h4>My account</h4>
                <ul>
                    <li><a href="contact.html">Sign In</a></li>
                    <li><a href="index.html">View Cart</a></li>
                    <li><a href="#">My Wishlist</a></li>
                    <li><a href="#">Track My Order</a></li>
                    <li><a href="faq.html">Help</a></li>
                </ul>
            </div>
            <div class="col_1_of_4 span_1_of_4">
                <h4>Contact</h4>
                <ul>
                    <li><span><?php echo get_option('site_contact_num1');?></span></li>
                    <li><span><?php echo get_option('site_contact_num2');?></span></li>
                </ul>
                <div class="social-icons">
                    <h4>Follow Us</h4>
                    <ul>
                        <li class="facebook"><a href="<?php echo get_option('site_facebook_link');?>" target="_blank"> </a></li>
                        <li class="twitter"><a href="<?php echo get_option('site_twitter_link');?>" target="_blank"> </a></li>
                        <li class="googleplus"><a href="<?php echo get_option('site_google_plus_link');?>" target="_blank"> </a></li>
                        <li class="contact"><a href="<?php echo get_option('site_email_link');?>" target="_blank"> </a></li>
                        <div class="clear"></div>
                    </ul>
                </div>
            </div>
        </div>
        <div class="copy_right">
            <p><b><?php echo get_option('site_copyright');?></b></p>
        </div>
    </div>
</div>