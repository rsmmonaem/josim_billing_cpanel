<!DOCTYPE html>
<html>
<head>
    <title>Password Reset</title>
</head>
<body>
    <h2>Reset Your Password</h2>
    <?php echo validation_errors(); ?>
    <?php echo form_open('<?php echo base_url();?>/pass_reset/send_reset_link'); ?>
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" required>
    <button type="submit">Submit</button>
    </form>
</body>
</html>
