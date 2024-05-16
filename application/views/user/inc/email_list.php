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
                            <th>Email</th>
                            <th>Person Name</th>
                            <th>Company</th>
							<th>S.I.C Coad</th>
							<th> employee_range</th>
							<th> revenue_range</th>
							<th>job_lavel </th>
							<th> job_function_uri</th>
							<th> country</th>
							<th>city </th>
							<th> type</th>
							<th>create_date </th>
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
        url: '<?php echo base_url('super_admin/email_list'); ?>',
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
                        '<td>' + item.direct_email+ '</td>' + 
                        '<td>' + item.contact_name + '</td>' + 
                        '<td>' + item.company + '</td>' + 
						'<td>' + item.sic_coad + '</td>' + 
						'<td>' + item.employee_range + '</td>' + 
						'<td>' + item.revenue_range + '</td>' + 
						'<td>' + item.job_lavel + '</td>' + 
						'<td>' + item.job_function_uri + '</td>' + 
						'<td>' + item.country + '</td>' + 
						'<td>' + item.city + '</td>' + 
						'<td>' + item.type + '</td>' + 
						'<td>' + item.create_date + '</td>' + 
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

