<style>
	.card-body{
		text-align: center;
	}
</style>
<div class="page-wrapper">
    <div class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="breadcrumb-title pe-3"><?=$title?></div>
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">All <?=$title?> </li>
                    </ol>
                </nav>
            </div>
            <div class="ms-auto">
                <div class="btn-group">
                    <a href="<?= base_url()?>super_admin/add_email" type="button" class="btn btn-primary"><i class="bx bx-plus-circle"></i> Add New E-mail</a>
                </div>
            </div>
        </div>
        <!--end breadcrumb-->

        <div class="card">
            <div class="card-header">
                <h4 class="mb-0 text-uppercase" id="title"> </h4>

            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Job Function</th>
                            <th>Uri</th>
                            <th>Description</th>
							<th>Details</th>
							<th>Image</th>
						</tr>
                        </thead>
                        <tbody id="emailTableBody">
						</tbody>

                    </table>
                </div>
            </div>
        </div>

		<script>
    $.ajax({
        url: '<?php echo base_url('super_admin/job_function_list'); ?>',
        type: 'GET',
        dataType: 'json',
        success: function(response) {
            if (response.status === 'success') {
                // Data retrieval was successful
                var emailData = response.data['data'];
				var title = response.data['title'];

		document.getElementById("title").innerHTML = title;
				
                // Get a reference to the table body
                var emailTableBody = $('#emailTableBody');

                // Clear any existing rows in the table
                emailTableBody.empty();

                // Loop through the data and populate the table
                $.each(emailData, function(index, item) {
                    var rowHtml = '<tr>' +
					'<td>' + (index + 1) + '</td>' +
'<td>' + item.job_function + '</td>' + 
'<td>' + item.job_function_uri + '</td>' + 
'<td>' + (item.job_function_desc.length > 20 ? item.job_function_desc.substring(0, 20) + '...' : item.job_function_desc) + '</td>' + 
'<td>' + (item.job_function_details.length > 20 ? item.job_function_desc.substring(0, 20) + '...' : item.job_function_desc) + '</td>' + 
'<td><img style="height: 200px;" src="<?=base_url()?>uploads/Job_function/' + item.job_function_img + '" alt="Job Function Image"></td>' + 

'</tr>';

                    emailTableBody.append(rowHtml);
                });
				       

            } else {
                // Handle the case where no data was found
                console.error(response.message);
            }
        },
        error: function() {
            console.error('An error occurred during the AJAX request.');
        }
    });
</script>

