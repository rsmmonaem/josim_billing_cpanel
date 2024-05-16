<!-- Include necessary CSS and JS libraries -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Include SheetJS library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.4/xlsx.full.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<style>
.card-body {
    text-align: center;
}
</style>

<div class="page-wrapper">
    <div class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="breadcrumb-title pe-3">PRINTING</div>
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a></li>
                        <li class="breadcrumb-item active" aria-current="page">All PRINTING - STATEMENT List </li>
                    </ol>
                </nav>
            </div>
            <div class="ms-auto">
                <div class="btn-group">
                    <a href="<?= base_url()?>super_admin/add_entry" type="button" class="btn btn-primary"><i
                            class="bx bx-plus-circle"></i> Add New E-mail</a>
                </div>
            </div>
        </div>
        <!--end breadcrumb-->
		<div id="print-content">
			<div class="card">
				<div class="card-header">
					<h6 class="mb-0 text-uppercase" id="entryTitle">All PRINTING - STATEMENT List -<?=(date(' Y'))?> </h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table id="entryTable" class="table table-striped table-bordered" style="width:100%">
							<thead>
								<tr>
									<th>SL</th>
									<th>Date</th>
									<th>bill_no</th>
									<th>byer_payment_status</th>
									<th>submited_bill</th>
									<th>rcv_bill</th>
									<th>debit</th>
									<th>credit</th>
									<th>balance</th>
									<!-- <th>remark</th> -->
									<th>Action</th>
								</tr>
							</thead>
							<tbody id="entryTableBody">
								<!-- Table rows will be populated here -->
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>	
		<div class="container">
			
<button class="btn btn-primary btn-print mt-3" onclick="printTable()">Print</button>
<!-- Add export button -->
<button class="btn btn-success btn-export mt-3" onclick="exportToExcel()">Export to Excel</button>


		</div>
    </div>
</div>
<script>
    // Function to export table data to Excel
    function exportToExcel() {
        // Get table element
        var table = document.getElementById("entryTable");
        
        // Convert table to Excel workbook
        var wb = XLSX.utils.table_to_book(table);
        
        // Save workbook to Excel file
        XLSX.writeFile(wb, "entry_data.xlsx");
    }
</script>

<script>
    // Function to print the table
    function printTable() {
        // Hide the print button to avoid it being printed
        $('.btn-print').hide();
        
        // Print the content of the "print-content" div
        var printContent = document.getElementById('print-content');
        var originalContents = document.body.innerHTML;
        document.body.innerHTML = printContent.innerHTML;
        window.print();
        document.body.innerHTML = originalContents;
        
        // Show the print button again after printing is done
        $('.btn-print').show();
    }
</script>

<script>
// Function to load or reload data for the entry table
function loadentryData() {
    $.ajax({
        url: '<?php echo base_url('super_admin/entry_list'); ?>',
        type: 'GET',
        dataType: 'json',
        success: function(response) {
            if (response.status === 'success') {
                var entryData = response.data.entry_data.entries;
                var currentBalance = response.current_balance;
				var totalBalance = response.data.entry_data.totalBalance;
				console.log(JSON.stringify(totalBalance));


                var entryTableBody = $('#entryTableBody');
                entryTableBody.empty();

                var totalSubmitedBill = 0;
                var totalRcvBill = 0;
                var totalDebit = 0;
                var totalCredit = 0;

                $.each(entryData, function(index, item) {
                    var rowHtml = '<tr>' +
                        '<td>' + (index + 1) + '</td>' +
                        '<td>' + item.create_date + '</td>' +
                        '<td>' + item.bill_no + '</td>' +
                        '<td>' + item.byer_payment_status + '</td>' +
                        '<td>' + item.submited_bill + '</td>' +
                        '<td>' + item.rcv_bill + '</td>' +
                        '<td>' + item.debit + '</td>' +
                        '<td>' + item.credit + '</td>' +
                        '<td>' + item.balance + '</td>' +
                        // '<td><a class="btn btn-info edit-entry" href="<?php echo base_url('super_admin/edit_entry/'); ?>' +
                        // item.id + '">Edit</a></td>' +
                        '<td><button class="btn btn-danger delete-entry" data-id="' + item.id +
                        '">Delete</button></td>' +
                        '</tr>';
                    entryTableBody.append(rowHtml);

                    // Calculate totals
                    totalSubmitedBill += parseFloat(item.submited_bill) || 0;
                    totalRcvBill += parseFloat(item.rcv_bill) || 0;
                    totalDebit += parseFloat(item.debit) || 0;
                    totalCredit += parseFloat(item.credit) || 0;
                });

                // Create total row
                var totalRowHtml = '<tr>' +
                    '<td colspan="4">Total</td>' +
                    '<td>' + totalSubmitedBill + '</td>' +
                    '<td>' + totalRcvBill + '</td>' +
                    '<td>' + totalDebit + '</td>' +
                    '<td>' + totalCredit + '</td>' +
                    '<td>' + currentBalance + '</td>' +
                    '<td colspan="2"> Total Amount  - '+totalBalance+'</td>' + // Empty cells for edit and delete buttons
                    '</tr>';
                entryTableBody.append(totalRowHtml);

                iziToast.success({
                    title: 'Success',
                    message: 'Entry data loaded successfully.',
                    position: 'topRight'
                });
            } else {
                console.error(response.message);
            }
        },
        error: function() {
            console.error('An error occurred during the AJAX request.');
        }
    });
}


// Load data for the entry table initially
loadentryData();

// Handle delete button click for the entry table
$(document).on("click", ".delete-entry", function() {
    var id = $(this).data('id');

    $.ajax({
        url: '<?php echo base_url('super_admin/delete_entry'); ?>',
        type: 'POST',
        data: {
            id: id
        },
        dataType: 'json',
        success: function(response) {
            if (response.status === 'success') {
                // Display success message using iziToast
                iziToast.success({
                    title: 'Success',
                    message: response.message,
                    position: 'topRight'
                });

                // Reload data for the entry table after successful deletion
                loadentryData();
            } else {
                // Display error message using iziToast
                iziToast.error({
                    title: 'Error',
                    message: response.message,
                    position: 'topRight'
                });
            }
        },
        error: function() {
            // Display a generic error message using iziToast
            iziToast.error({
                title: 'Error',
                message: 'An error occurred during the request.',
                position: 'topRight'
            });
        }
    });
});

// Additional JavaScript code for the entry table
</script>
<!-- <script>
    // Function to load or reload data for the entry table from JSONPlaceholder API
    function loadentryData() {
        $.ajax({
            url: 'https://jsonplaceholder.typicode.com/posts',
            type: 'GET',
            dataType: 'json',
            success: function(response) {
                // Assuming the structure of your response from JSONPlaceholder is similar to your existing entry data structure
                var entryData = response;

                // Get a reference to the entry table body
                var entryTableBody = $('#entryTableBody');

                // Clear any existing rows in the table
                entryTableBody.empty();

                // Loop through the data and populate the entry table
                $.each(entryData, function(index, item) {
					var i = index + 1;
                    var rowHtml = '<tr>' +
						'<td>' + i + '</td>' +
                        '<td>' + item.userId + '</td>' +
                        '<td>' + item.id + '</td>' +
                        '<td>' + item.title + '</td>' +
                        '<td>' + item.body + '</td>' +
                        '</tr>';
                    entryTableBody.append(rowHtml);
                });

                // Display success message using iziToast
                iziToast.success({
                    title: 'Success',
                    message: 'Data loaded successfully from JSONPlaceholder API',
                    position: 'topRight'
                });
            },
            error: function() {
                console.error('An error occurred during the AJAX request.');
            }
        });
    }

    // Load data for the entry table initially
    loadentryData();

    // Additional JavaScript code for the entry table
</script> -->
