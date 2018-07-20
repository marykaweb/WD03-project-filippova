<div class="main-wrapper">
	<div class="container container--center">
		<div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">
			<div class="title-1">Блог веб-разработчика</div>
			<div class="section-ui">
				<a class="button button--edit" href="<?=HOST?>blog/post-new"> Добавить пост</a>
			</div>
		</div>
		<div class="row pb-35">
			
			<?php foreach ($posts as $post) {
				include ROOT . "templates/_parts/_blog-card.tpl";
			} ?>
	</div>
</div>
