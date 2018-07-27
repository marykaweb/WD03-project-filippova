<?php
$title = "Название работы";

$sqlCount = R::exec('SELECT * from works');
$sqlLastId = R::getAll('SELECT MAX(id) FROM works');
$sqlFirstId = R::getAll('SELECT MIN(id) FROM works');

if ( isset($_GET['id']) ) {
$sqlNextId = R::getAll( 'SELECT id FROM `works` WHERE `id` > ' . $_GET['id'] . ' ORDER BY `id` LIMIT 1');
$sqlPrevId = R::getAll( 'SELECT id FROM `works` WHERE `id` < ' . $_GET['id'] . ' ORDER BY `id` DESC LIMIT 1');
}

$sql = 'SELECT works.id, works.date_time, works.work_name, works.description, works.result, works.technology, works.link_project, works.link_github, works.maket, works.maket_small, works.author_id, users.name, users.secondname
	FROM works
	LEFT JOIN users
	ON works.author_id = users.id
	WHERE works.id = ' . $_GET['id'] . ' LIMIT 1';

$work = R::getAll($sql);
$work = $work[0];

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/works/work-single.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>