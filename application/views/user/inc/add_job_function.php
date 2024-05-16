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
                <form id="dataForm" enctype="multipart/form-data">

                    <div class="form-body mt-4">
                        <div class="row border border-1">

                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">Job Function<label class="text-danger"> *</label></label>
                                    <input type="text" id="job_function" name="job_function" class="form-control" placeholder="Example: Medical Officer, CEO" requred>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">Job Function URI <label class="text-danger"> *</label></label>
                                    <input type="text" class="form-control"  placeholder="medical_officer" id="job_function_uri" name="job_function_uri" requred>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Job Function Short Description <label class="text-danger"> *</label></label>
									<textarea  type="text" name="job_function_desc" id="job_function_desc" class="form-control" cols="30" rows="5"></textarea requred>
								</div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Job Function Details <label class="text-danger"> *</label></label>
									<textarea type="text" name="job_function_details" id="job_function_details" class="form-control" cols="30" rows="5"></textarea requred>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Jon Function Image <label class="text-danger"> *</label></label>
                                    <input type="file" name="job_function_img" id="job_function_img" class="form-control" requred>
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

        



	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
    $(document).ready(function() {
        $('#dataForm').submit(function(e) {
            e.preventDefault(); // Prevent the default form submission

            var formData = new FormData(this); // Create a FormData object from the form

            $.ajax({
                url: '<?php echo base_url('super_admin/save_job_function'); ?>',
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                success: function(response) {
                    $('#result').html(response); // Display the response in '#result'
                    showSuccessMessage(); // Show success message
                },
                error: function() {
                    alert('An error occurred'); // Handle any AJAX error
                }
            });
        });

        function showSuccessMessage() {
            iziToast.success({
                title: 'Success',
                position:'topRight',
                message: 'Job Function inserted successfully',
            });
        }
    });
</script>

