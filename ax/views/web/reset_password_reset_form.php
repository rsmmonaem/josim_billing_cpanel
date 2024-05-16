<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
</head>
<body>
    <h2>Reset Your Password</h2>
    <?php echo validation_errors(); ?>
    <?php echo form_open('<?php echo base_url();?>/pass_reset/update_password'); ?>
    <label for="password">New Password:</label>
    <input type="password" id="password" name="password" required>
    <label for="confirm_password">Confirm Password:</label>
    <input type="password" id="confirm_password" name="user_password" required>
    <button type="submit">Reset Password</button>
    </form>
</body>
</html>
