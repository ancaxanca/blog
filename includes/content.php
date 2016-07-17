<div id="wrapper">
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
