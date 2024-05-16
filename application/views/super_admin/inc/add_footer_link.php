<div class="page-wrapper">
    <div class="page-content">
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3"><?= $title ?></div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a></li>
                            <li class="breadcrumb-item active" aria-current="page">All <?= $title ?></li>
                        </ol>
                    </nav>
                </div>
                <div class="ms-auto">
                    <div class="btn-group">
                        <a href="<?= base_url() ?>super_admin/footer_link_list" type="button" class="btn btn-primary"><i class="bx bx-plus-circle"></i> Footer Link List</a>
                    </div>
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
                                    <label class="form-label">PermaLink |Already Included <label class="text-danger"> *'http://yourdomain.com/home/'</label></label>
                                    <input type="text" id="perma_link" name="perma_link" class="form-control" placeholder="Perma_link">
                                </div>
                            </div>


							<div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">Name</label>
									<input  type="text" name="name" id="name" placeholder="Name"  class="form-control" requred>
                                </div>
                            </div>

							<div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Position <label class="text-danger"> *</label></label>
									<select  class="form-select" name="position" id="position" aria-label="Default select example" required>
									<option value="">--Select--</option>
									<option value="1">First</option>
									<option value="2">Second</option>
									<option value="3">Third</option>
									<option value="4">Fourth</option>
								</select>
								</div>
                            </div>

							<div class="col-md-12">
                                <div class="mb-3" style="text-align: center;">
                                    <label  class="form-label">Click Below</label>
                                    <input type="button" id="submitData" class="form-control btn btn-primary" value="Submit">
                                </div>
                            </div>
                        </div><!--end row-->
                    </div>
                </form>

            </div>
        </div>
<script>
    $(document).ready(function() {
        $('#submitData').click(function() {
            $.ajax({
                url: '<?php echo base_url('super_admin/save_footer_link'); ?>',
                type: 'POST',
                data: $('#dataForm').serialize(),
                dataType: 'json',
                success: function(response) {
                    if (response.message) {
                        // Display a success notification using iziToast
                        iziToast.success({
                            title: 'Success',
                            message: response.message,
                            position: 'topRight'
                        });
                    } else {
                        $('#result').html('An error occurred.');
                    }
                },
                error: function() {
                    // Display an error notification using iziToast
                    iziToast.error({
                        title: 'Error',
                        message: 'An error occurred.',
                        position: 'topRight'
                    });
                }
            });
        });
    });
</script>









