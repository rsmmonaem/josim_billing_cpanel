<div class="page-wrapper">
    <div class="page-content">
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="breadcrumb-title pe-3">PRINTING - STATEMENT List</div>
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">PRINTING</li>
                    </ol>
                </nav>
            </div>
            <div class="ms-auto">
                <div class="btn-group">
                    <a href="<?= base_url()?>super_admin/entry_list_content" type="button" class="btn btn-primary"><i class="bx bx-plus-circle"></i>PRINTING - STATEMENT List</a>
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
                                    <label class="form-label">Bill Number<label class="text-danger"> *</label></label>
                                    <input type="text" id="direct_entry" name="bill_no" class="form-control" placeholder="382320">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label class="form-label">Bayer Payment Status </label>
                                    <input type="text" class="form-control"  placeholder="Cash" id="contact_name" name="Cash">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Submited Bill </label>
                                    <input type="number" name="submited_bill" id="company" class="form-control" placeholder="400">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">RCV Bill <label class="text-danger"> *</label></label>
                                    <input type="number" name="rcv_bill" id="sic_coad"  class="form-control" placeholder="400">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">debit <label class="text-danger"> *</label></label>
                                    <input type="number" name="debit" id="employee_range" class="form-control" placeholder="100">
                                </div>
                            </div>
							<div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">credit <label class="text-danger"> *</label></label>
                                    <input type="number" name="credit" id="revenue_range" class="form-control" placeholder="200">
                                </div>
                            </div>
                            <!-- <div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">balance <label class="text-danger"> *</label></label>
                                    <input type="number" name="balance" id="job_lavel" class="form-control" placeholder="Designation">
                                </div>
                            </div> -->

							<div class="col-md-6">
                                <div class="mb-3">
                                    <label  class="form-label">Date<label class="text-danger"> *</label></label>
                                    <input type="date" name="create_date" id="create_date" class="form-control" >
                                </div>
                            </div>

							<div class="col-md-12">
                                <div class="mb-3">
                                    <label  class="form-label">Submit</label>
                                    <input type="button" id="submitData" class="form-control btn btn-primary" value="Submit">
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
            $('#submitData').click(function() {
                $.ajax({
                    url: '<?php echo base_url('super_admin/save_entry'); ?>',
                    type: 'POST',
                    data: $('#dataForm').serialize(),
                    success: function(response) {
                        $('#result').html(response);
                    }
                });
            });
        });
    </script>
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












