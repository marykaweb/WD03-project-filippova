<?php require_once ROOT . "templates/about/_about-text.tpl";  ?>

<hr/>
<div class="container">
	<div class="title-1 mt-70 mb-35">Новые записи в
		<a href="<?=HOST?>blog">блоге</a>
	</div>
	<div class="row pb-100">
		<?php foreach ($posts as $post) { ?>
		<?php include ROOT . "templates/_parts/_blog-card.tpl" ?>
		<?php } ?>
	</div>
</div>