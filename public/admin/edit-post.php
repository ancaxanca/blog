<?php //include config
require_once('../../includes/config.php');

//if not logged in redirect to login page
if(!$user->is_logged_in())
{ 
    header('Location: login.php'); 
}

?>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Admin - Edit Post</title>
  <link rel="stylesheet" href="../../style/normalize.css">
  <link rel="stylesheet" href="../../style/main.css">
  <script src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
  <script>
    tinymce.init({
      selector: "textarea",
      plugins: [
          "advlist autolink lists link image charmap print preview anchor",
          "searchreplace visualblocks code fullscreen",
          "insertdatetime media table contextmenu paste"
      ],
      toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
    });
  </script>
</head>
<body>

<div id="wrapper">
    <?php include('menu.php');?>
    <p>
        <a href="./">Blog Admin Index</a>
    </p>
    <h2>Edit Post</h2>

    <?php

    //if form has been submitted process it
    if(isset($_POST['submit'])){

        $_POST = array_map( 'stripslashes', $_POST );

        //collect form data
        extract($_POST);

        //very basic validation
        if($id ==''){
            $error[] = 'This post is missing a valid id!.';
        }

        if($title ==''){
            $error[] = 'Please enter the title.';
        }

        if($content ==''){
            $error[] = 'Please enter the content.';
        }

        if(!isset($error)){
            try {
                //insert into database
                $stmt = $db->prepare('
                    UPDATE articles 
                    SET title = :title, content = :content 
                    WHERE id = :id') ;
                $stmt->execute(array(
                    ':title' => $title,
                    ':content' => $content,
                    ':id' => $id
                ));

                //redirect to index page
                header('Location: index.php?action=updated');
                exit;

            } 
            catch(PDOException $e) 
            {
                echo $e->getMessage();
            }
        }
    }

    ?>

    <?php
    //check for any errors
    if(isset($error))
    {
        foreach($error as $error)
        {
            echo $error.'<br />';
        }
    }
    try 
    {
        $stmt = $db->prepare('
            SELECT id, title, content 
            FROM articles 
            WHERE id = :id') ;
        $stmt->execute(array(':id' => $_GET['id']));
        $row = $stmt->fetch(); 
    } 
    catch(PDOException $e) 
    {
        echo $e->getMessage();
    }

    ?>

    <form action='' method='post'>
        <input type='hidden' name='id' value='<?php echo $row['id'];?>'>
        <p>
            <label>Title</label><br />
            <input type='text' name='title' value='<?php echo $row['title'];?>'>
        </p>
        <p>
            <label>Content</label><br />
            <textarea name='content' cols='60' rows='10'><?php echo $row['content'];?></textarea>
        </p>
        <p>
            <input type='submit' name='submit' value='Update'>
        </p>
    </form>
</div>

</body>
</html> 
