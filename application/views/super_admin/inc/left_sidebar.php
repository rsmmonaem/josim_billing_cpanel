<?php
//$user_id = $this->session->userdata('user_id');
//$user_info = $this->umm->get_user_modification_id('admin_user',$user_id);
//?>

<!--sidebar wrapper -->
<div class="sidebar-wrapper" data-simplebar="true">
	<div class="sidebar-header">
		<div class="text-center">
			<img src="<?= base_url()?>assets/home/images/bookyourdata-logo.svg" style="max-height: 118px;" class="img-fluid p-1" alt="logo icon" width="60%">
		</div>
		 <div>
			<h4 class="logo-text">Admin</h4>
		</div>
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
			<a href="<?= base_url()?>super_admin">
				<div class="parent-icon"><i class='bx bx-home-alt'></i>
				</div>
				<div class="menu-title"> Dashboard </div>
			</a>
		</li>
		<li>
			<a href="javascript:;" class="has-arrow">
				<div class="parent-icon"><i class="bx bx-category"></i>
				</div>
				<div class="menu-title">Entry</div>
			</a>
			<ul>
				<li> <a href="<?= base_url()?>super_admin/add_entry"><i class='bx bx-radio-circle'></i>Add New Entry</a></li>
				<li> <a href="<?= base_url()?>super_admin/entry_list_content"><i class='bx bx-radio-circle'></i>Entry List</a></li>
			</ul>
		</li>
		
		<li>
			<a href="javascript:;" class="has-arrow">
				<div class="parent-icon"><i class="bx bx-category"></i>
				</div>
				<div class="menu-title">User Management</div>
			</a>
			<ul>

				<li> <a href="<?= base_url()?>super_admin/update_profile"><i class='bx bx-radio-circle'></i>My Profile</a></li>
			</ul>
		</li>
	</ul>
	<!--end navigation-->
</div>
<!--end sidebar wrapper -->


