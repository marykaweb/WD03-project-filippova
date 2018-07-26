<?php
if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}
$title = "Удалить категорию категорию";

$job = R::load('jobs', $_GET['id']);

if(isset($_POST['jobDelete'])) {
		R::trash($job);
		header('Location: ' . HOST . 'edit-jobs?result=jobDeleted');
		exit();
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/delete-job.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>