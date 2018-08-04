<?php
$title = "Сообщение";

$messages = R::find('messages', 'ORDER BY id DESC');

$message = R::load('messages', @$_GET['id']);

if( !empty($_GET['id']) ) {
	$postImgFolderLocation = ROOT . 'usercontent/upload_files/';
	$postImg = $message->message_file;
	if ( $postImg != '' ) {
		$picurl = $postImgFolderLocation . $postImg;
		if ( file_exists($picurl) ) { unlink($picurl); }
	}
	R::trash($message);

	header('Location: ' . HOST . 'messages?result=messageDeleted');
	exit();
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/messages.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>