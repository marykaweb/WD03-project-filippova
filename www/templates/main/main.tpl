<?php require_once ROOT . "templates/about/_about-text.tpl";  ?>

<hr class="devide" />
<div class="container mainpage-block">
		<div class="title-1">Новые <a href="<?=HOST?>works">работы</a>
	</div>
	<div class="row">
		<?php foreach ($works as $work) { ?>
		<?php include ROOT . "templates/works/_work-card.tpl" ?>
		<?php } ?>
	</div>

	<div class="title-1">Новые записи в
		<a href="<?=HOST?>blog">блоге</a>
	</div>
	<div class="row">
		<?php foreach ($posts as $post) { ?>
		<?php include ROOT . "templates/_parts/_blog-card.tpl" ?>
		<?php } ?>
	</div>


</div>
