<?php
if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}
$title = "Удалить категорию категорию";

$cat = R::load('categories', $_GET['id']);

if(isset($_POST['catDelete'])) {
		R::trash($cat);
		header('Location: ' . HOST . 'blog/categories?result=catDeleted');
		exit();
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/delete.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>