<!DOCTYPE html>
<html>
	
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <title>Shopping Cart</title>
</head>
<body>
    <h1>Your Shopping Cart</h1>
	<table class="table table-striped">
    <tr>
        <th>Product</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Total</th>
        <th>Action</th> <!-- Add this column for the remove button -->
    </tr>
    <?php
    $grand_total = 0; // Initialize grand total
    foreach ($this->cart->contents() as $item):
        $total_item_price = $item['subtotal'];
        $grand_total += $total_item_price; // Accumulate the subtotal
    ?>
        <tr>
			
            <td><?= $item['name'] ?></td>
            <td>$<?= $item['price'] ?></td>
            <td><?= $item['qty'] ?></td>
            <td>$<?= $total_item_price ?></td>

            <td>
                <form method="post" action="<?= base_url('remove-from-cart/' . $item['rowid']) ?>">
                    <input type="submit" value="Remove">
                </form>
            </td>
        </tr>
    <?php endforeach; ?>
    <tr>
        <td colspan="3">Grand Total</td>
        <td>$<?= $grand_total ?></td>
		<td>
 <!-- Add a "Checkout" button -->
 <form method="post" action="<?= base_url('checkout') ?>">
        <input type="submit" value="Checkout">
    </form>
		</td>
        <td></td>
    </tr>
</table>

</body>
</html>
