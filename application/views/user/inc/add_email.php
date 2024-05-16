<div class="page-wrapper">
    <div class="page-content">
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="breadcrumb-title pe-3">Email</div>
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page"><?=$title?></li>
                    </ol>
                </nav>
            </div>
        </div>
        <!--end breadcrumb-->
        <div class="card">
            <div class="card-body p-4">
                <h5 class="card-title"><?=$title?></h5>
                <hr/>
                <form id="dataForm">
                    <div class="form-body mt-4">
                        <div class="row border border-1">

                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">E-mail Address<label class="text-danger"> *</label></label>
                                    <input type="email" id="direct_email" name="direct_email" class="form-control" placeholder="Example: your@gmai.com">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">Person Name </label>
                                    <input type="text" class="form-control"  placeholder="Who's This" id="contact_name" name="contact_name">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Company Name </label>
                                    <input type="text" name="company" id="company" class="form-control" placeholder="Company Name">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">S.I.C Coad <label class="text-danger"> *</label></label>
                                    <input type="text" name="sic_coad" id="sic_coad"  class="form-control" placeholder="S.I.C Coad">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Employee Range <label class="text-danger"> *</label></label>
                                    <input type="number" name="employee_range" id="employee_range" class="form-control" placeholder="Employee Range">
                                </div>
                            </div>
							<div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Revenue Range <label class="text-danger"> *</label></label>
                                    <input type="number" name="revenue_range" id="revenue_range" class="form-control" placeholder="Revenue Range">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Job lavel <label class="text-danger"> *</label></label>
                                    <input type="text" name="job_lavel" id="job_lavel" class="form-control" placeholder="Designation">
                                </div>
                            </div>
							<div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Job Function URI <label class="text-danger"> *</label></label>
                                <select  class="form-select" aria-label="Default select example" name="job_function_uri"  id="job_function_uri" required="">
									<option value="">--Select--</option>
									<?php 
									$datax = $this->db->get('job_function_uri')->result();
										foreach ($datax as $row) : ?>
										<option value="<?=$row->job_function_uri?>"><?=$row->job_function?></option>
									<?php endforeach; ?>
								</select>
								</div>
                            </div>
							<div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Country <label class="text-danger"> *</label></label>
									<select  class="form-select" aria-label="Default select example" name="country"  id="country" required="">
									<option value="">--Select--</option>
									<?php 
									$data = $this->db->get('country')->result();
										foreach ($data as $row) : ?>
										<option value="<?=$row->countryname?>"><?=$row->countryname?></option>
									<?php endforeach; ?>
								</select>
                                </div>
                            </div>

							<div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">City <label class="text-danger"> *</label></label>
                                    <input type="text" name="city" id="city" class="form-control"  placeholder="city">
                                </div>
                            </div>

							<div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Type <label class="text-danger"> *</label></label>
									<select  class="form-select" name="type" id="type" aria-label="Default select example" required="">
									<option value="">--Select--</option>
									<?php 
									$data = $this->db->get('type')->result();
										foreach ($data as $row) : ?>
										<option value="<?= $row->type ?>"><?=$row->type_h1?></option>
									<?php endforeach; ?>
								</select>
								</div>
                            </div>

							<div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Date<label class="text-danger"> *</label></label>
                                    <input type="date" name="create_date" id="create_date" class="form-control"  placeholder="country">
                                </div>
                            </div>

							<div class="col-md-12">
                                <div class="mb-3">
                                    <label  class="form-label">Click Below</label>
                                    <input type="submit" id="submitData" class="form-control btn btn-primary" value="Submit">
                                </div>
                            </div>
                        </div><!--end row-->
                    </div>
                </form>

            </div>
        </div>

        <?php if ($this->session->flashdata('error')): ?>
            <script>
                iziToast.error({
                    title: 'Error',
                    position:'topRight',
                    message: '<?php echo $this->session->flashdata('error'); ?>',
                });
            </script>
        <?php endif; ?>


        <?php if (isset($_SESSION['success'])): ?>
            <script>
                iziToast.success({
                    title: 'Success',
                    position:'topRight',
                    message: ' <?php echo $_SESSION['success']; ?>',
                });
            </script>

            <?php unset($_SESSION['success']); ?>

        <?php endif; ?>



	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#submitData').click(function() {
                $.ajax({
                    url: '<?php echo base_url('super_admin/save_email'); ?>',
                    type: 'POST',
                    data: $('#dataForm').serialize(),
                    success: function(response) {
                        $('#result').html(response);
                    }
                });
            });
        });
    </script>








