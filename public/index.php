<?php require('../includes/config.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Blog</title>
    <link rel="stylesheet" href="../style/normalize.css">
    <link rel="stylesheet" href="../style/main.css">
</head>
<body>
 <div class="">
	<div id="wrapper">
		<h1>Blog</h1>
		<hr>

		<?php
			try 
			{
				$stmt = $db->query('
					SELECT id, title, postDate, content
					FROM articles 
					ORDER BY id DESC');

				while($row = $stmt->fetch())
				{
					echo '<div>'; 
						echo '<h3><a href="viewpost.php?id='.$row['id'].'">'.$row['title'].'</a></h3>';
						echo '<p>Posted on '.date('jS M Y H:i:s', strtotime($row['postDate'])).'</p>';
						//echo '<div>' . $row['content'] . '</div>';
						echo '<p><a href="viewpost.php?id='.$row['id'].'">Read More</a></p>';				
					echo '</div>';
				}
			} 
			catch(PDOException $e) 
			{
			    echo $e->getMessage();
			}
		?>
	</div>
	</div>
</body>
</html>