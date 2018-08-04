<?php
$title = "Профиль пользователя";

if ( isset($_GET) ) {
	$limit1 = 0;
	$limit2 = 5;
	$page = @$_GET['page'];
	if ( $page > 1 ) {
		$limit1 = 5*$page-$limit2;
		$limit2 = 5;
	}
}
$row = R::getAll('SELECT * FROM comments WHERE user_id = '. $_SESSION['logged_user']['id'] .'');
$comments = R::getAll('SELECT comments.id, comments.post_id, comments.text, comments.date_time, posts.title FROM `comments`
LEFT JOIN users
ON comments.user_id = users.id
LEFT JOIN posts
ON comments.post_id = posts.id
WHERE users.id = '. $_SESSION['logged_user']['id'] .' LIMIT ' . $limit1 . ', ' . $limit2 . '');

$currentUser = $_SESSION['logged_user'];

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>