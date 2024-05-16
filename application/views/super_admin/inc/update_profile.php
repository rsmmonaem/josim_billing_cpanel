
<div class="page-wrapper">
    <div class="page-content">
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="breadcrumb-title pe-3">Update Your Profile </div>
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page"><?= $title?></li>
                    </ol>
                </nav>
            </div>
            <div class="ms-auto">
                <div class="btn-group">
                </div>
            </div>
        </div>
        <!--end breadcrumb-->
        <div class="card">
            <div class="card-header d-flex align-items-center">
                <h5 class="card-title">Profile</h5>
                <div class="dropdown ms-auto">

                </div>
            </div>
            <?php
            $this->db->select('admin_user.*');
            $user_id = $this->session->userdata('user_id');
            $this->db->from('admin_user');
            $this->db->where('user_id', $user_id);
            $user_info = $this->db->get()->row();
            ?>

            <div class="card-body p-4">
                <form action="<?= base_url();?>super_admin/save_update_profile" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="u_id" value="<?=$user_info->u_id?>" id="">
                    <div class="row form-body mt-4">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label"> First Name <label class="text-danger"> *</label></label>
                                <input type="text" name="first_name" class="form-control" id="name" placeholder="Your First Name" value="<?=$user_info->first_name?>">
                            </div>
                        </div>
						<div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">Last Name <label class="text-danger"> *</label></label>
                                <input type="text" name="last_name" class="form-control" id="name" placeholder="Your Last Name" value="<?=$user_info->last_name?>">
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="form-label">User E-mail<label class="text-danger"> *</label></label>
                                <input type="text" name="user_name" class="form-control" placeholder="Your Email" value="<?= $user_info->user_name?>">
                            </div>
                        </div>

						<div class="col-md-6">
							<div class="mb-3">
								<label for="" class="form-label">Password <label class="text-danger">*</label></label>
								<div class="input-group">
									<input type="password" id="myInput" name="pass_word" class="form-control" placeholder="Password" value="<?= $user_info->pass_word ?>">
									<div class="input-group-append">
										<span class="input-group-text btn btn-primary" style="height: 38px;border-bottom-left-radius: 0;border-top-left-radius: 0;" id="togglePassword">
											<i class="fas fa-eye" aria-hidden="true"></i>
										</span>
									</div>
								</div>
							</div>
						</div>
                  

                        <div class="col-md-6">
                            <div class="mt-2 mb-3">
                                <input type="submit" value="Submit" class="btn btn-primary">
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>


<script>
	document.getElementById("togglePassword").addEventListener("click", function () {
		var passwordInput = document.getElementById("myInput");

		if (passwordInput.type === "password") {
			passwordInput.type = "text";
		} else {
			passwordInput.type = "password";
		}
	});

</script>






