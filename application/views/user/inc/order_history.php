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
                            <th>Order ID</th>
							<th>Product ID</th>
                            <th>Amount</th>
							<th>Payment</th>
							<th>Delevery</th>
							<th>Action</th>
							<th>Date</th>
						</tr>
                        </thead>
                        <tbody id="emailTableBody">
                                <?php $i = 1;
                                foreach ($history as $row) : ?>
                                    <tr>
                                        <td><?= $i++ ?></td>
                                        <td><?= $row->order_id ?></td>
                                        <td><?= $row->product_id  ?></td>
                                        <td><?= $row->order_total  ?></td>
                                        <td><?= $row->payment_status  ?></td>
                                        <td>
<?php
$result = $this->db->get_where('email_list_database_price', ['job_function_uri' => $row->product_id])->row();
if ($result && $row->payment_status === 'Completed') {
    echo 'Completed';
} else {
    echo '<h6 style="color: red;">processing</h6>';}
?>

										</td>
										<td>
<?php
$result = $this->db->get_where('email_list_database_price', ['job_function_uri' => $row->product_id])->row();

if ($result && $row->payment_status === 'Completed') {
    // Get the file path from the database result
    $file_path = $result->file_download_link;
    echo '<a href="'.$file_path.'">Download File</a>';
} else {
    echo '<h6 style="color: red;">processing</h6>';
}
?>



										</td>
										<td><?= $row->order_date  ?></td>
                                      
                                        
                                    </tr>
                                <?php endforeach; ?>
						</tbody>

                    </table>
                </div>
            </div>
        </div>

		<!-- <script>
    $.ajax({
        url: '<?php echo base_url('user/orders_history_fatch'); ?>',
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
'<td>' + item.order_id + '</td>' + 
'<td>' + item.product_id + '</td>' +  
'<td>' + item.order_total + ' USD' + '</td>' + 
'<td>' + item.payment_status + '</td>' + 
'<td>' + item.order_delevery_status + '</td>' + 
'<td id="database_price_' + item.product_id + '"></td>' + 
'<td>' + item.order_date + '</td>';

// JavaScript code to fetch database price using AJAX
$.ajax({
    type: 'POST',
	url: '<?php echo base_url('user/orders_link'); ?>', // Change to the actual URL that handles the database query
    data: { product_id: item.product_id },
    success: function(result) {
        $('#database_price_' + item.product_id).text(result);
    }
});'</tr>';

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
</script> -->




