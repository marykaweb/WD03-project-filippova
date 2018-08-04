<?php
$title = "Категория";

$sqlCat = 'SELECT * FROM posts WHERE cat = ' . $_GET['id'] . '';
$posts = R::getAll( $sqlCat );

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-category.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>