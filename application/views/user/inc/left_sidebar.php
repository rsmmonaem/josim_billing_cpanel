
<?php 
$user_email = $this->session->userdata('user_name');	
$user_id = $this->session->userdata('user_id');
?>
	
<!--sidebar wrapper -->
<div class="sidebar-wrapper" data-simplebar="true">
	<div class="sidebar-header">
		<div class="text-center">
			<img src="<?= base_url()?>assets/home/images/bookyourdata-logo.svg" style="max-height: 118px;" class="img-fluid p-1" alt="logo icon" width="60%">
		</div>
<!--		<div>-->
<!--			<h4 class="logo-text">Rocker</h4>-->
<!--		</div>-->
		<div class="toggle-icon ms-auto"><i class='bx bx-arrow-back'></i>
		</div>
	</div>
	<!--navigation-->
	
	<ul class="metismenu" id="menu">
		<li>
			<a href="<?= base_url()?>">
				<div class="parent-icon"><i class="bx bx-category"></i>
				</div>
				<div class="menu-title">Visit Site</div>
			</a>
		</li>
		<li>
			<a href="<?= base_url()?>user">
				<div class="parent-icon"><i class='bx bx-home-alt'></i>
				</div>
				<div class="menu-title"> Dashboard </div>
			</a>
		</li>
		
		<li>
			<a href="javascript:;" class="has-arrow">
				<div class="parent-icon"><i class="bx bx-category"></i>
				</div>
				<div class="menu-title">My Orders</div>
			</a>
			<ul>
				<li> <a href="<?= base_url()?>user/orders_history "><i class='bx bx-radio-circle'></i>Order History</a></li>
				<!-- <li> <a href="<?= base_url()?>user/#"><i class='bx bx-radio-circle'></i>Cancelation Order</a></li> -->
			</ul>
		</li>

		<li>
			<a href="javascript:;" class="has-arrow">
				<div class="parent-icon"><i class="bx bx-category"></i>
				</div>
				<div class="menu-title">Manage My Account</div>
			</a>
			<ul>
				<li> <a href="<?= base_url()?>user/update_profile"><i class='bx bx-radio-circle'></i>My Profile</a></li>			</ul>
		</li>
	</ul>
	<!--end navigation-->
</div>
<!--end sidebar wrapper -->


