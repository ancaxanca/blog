<?php

	$results = $db->query('
		SELECT id, description, path
		FROM menus');
	
	$menus = array();
	while($row = $results->fetch()){
		$menu = new Menu_item();		
		$menu->id = $row['id'];
		$menu->description = $row['description'];
		$menu->path = $row['path'];
		
		array_push($menus,$menu);
	}
	
	echo "<ul>"; 

	foreach ($menus as $menu) {
		$path = '../public'.''.$menu->path;
		echo '<li><a href="'.$path.'">' . $menu->description . '</a></li>';
	}

	echo "</ul>"
?>