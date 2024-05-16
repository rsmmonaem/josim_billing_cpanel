<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Classic Login Form Example</title>
  <link href="https://fonts.googleapis.com/css?family=Assistant:400,700" rel="stylesheet">
	<link rel="stylesheet" href="<?=base_url('assets/home/css/js/style.css')?>">

</head>
<body>
<!-- partial:index.partial.html -->
<section class='login' id='login'>
  <div class='head'>
  <h1 class='company'>JOSIM PRINTING</h1>
  </div>
  <div class='form'>
	<form action="<?= base_url() ?>login/login_process" method="post" class="form form--soft gap-bottom"
                        data-gtm-form-interact-id="0">
  <input type="text" placeholder="Email" name="user_name" class='text' value="admin@gmail.com" id='username' required><br>
  <input type="password" placeholder='••••••••••••••' value="admin" name="pass_word" class='password'><br>
	<button type="submit" class="btn-login" id='do-login'>Login To My Account</button>

    </form>

										
  </div>
</section>
<footer>
  <p>Developed By <a href="https://www.linkedin.com/in/rsm-monaem/">Rsm Monaem</a>

</body>
</html>
