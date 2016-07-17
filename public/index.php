<?php require('../includes/config.php'); ?>
<?php require('../includes/classes/Menu_item.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Blog</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<link rel="stylesheet" href="../style/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../style/style.css">
    
</head>
<body>
	<div class="container-fluid">
		<header>
			<img src="../images/logo.png" />
			<?php require('../includes/header.php'); ?>
		</header>
		<div class="content">
			<?php require('../includes/content.php'); ?>
		</div>
		<footer>
			<img src="../images/logo.png" />
			<?php require('../includes/footer.php'); ?>
			<ul>
				<li><i class="fa fa-twitter" aria-hidden="true"></i></li>
				<li><i class="fa fa-facebook" aria-hidden="true"></i></li>
				<li><i class="fa fa-google-plus-official" aria-hidden="true"></i></li>
				<li><i class="fa fa-linkedin" aria-hidden="true"></i></li>
				<li><i class="fa fa-instagram" aria-hidden="true"></i></li>
			</ul>
			<p>Privacy policy</p>
			<p>© 2016 AKQA inc. All Rights Reserved.</p>
		</footer>
	</div>
</body>
</html>