<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
</head>
<body>
    <h1>Checkout</h1>

    <!-- Display order summary (you can fetch this data from your cart) -->
    <table>
        <!-- Loop through cart items and display them here -->
        <?php foreach ($this->cart->contents() as $item): ?>
            <tr>
                <td><?= $item['name'] ?></td>
                <td><?= $item['qty'] ?> x <?= $item['price'] ?></td>
            </tr>
        <?php endforeach; ?>
    </table>

    <!-- Display total price -->
    <p>Total: <?= $this->cart->total() ?></p>

    <!-- Form to confirm purchase -->
    <form method="post" action="<?= base_url('checkout/process_order') ?>">
        <button type="submit">Confirm Purchase</button>
    </form>
	

</body>
</html>
