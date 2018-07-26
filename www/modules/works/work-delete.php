<?php
if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}
$title = "Удалить работу";

$work = R::load('works', $_GET['id']);
if(isset($_POST['workDelete'])) {
	
	$postImgFolderLocation = ROOT . 'usercontent/works/';
	$workImg = $work->maket;
	$workImgl320 = $work->maket_small;

	if ( $workImg != '' ) {
		$picurl = $postImgFolderLocation . $workImg;
		if ( file_exists($picurl) ) { unlink($picurl); }

		$picurl320 = $postImgFolderLocation . '320-' . $workImg;			
		if ( file_exists($picurl320) ) { unlink($picurl320); }
	}

	R::trash($work);
	header('Location: ' . HOST . 'works?result=workDeleted');
	exit();
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/works/work-delete.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>