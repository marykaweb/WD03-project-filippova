<div class="container mt-60 mb-100">
	<div class="row">
		<div class="col-xl-6 offset-3">
			<div class="title-1 experience_title">Опыт работы</div>
		</div>
		<?php if (isAdmin()) { ?>
		<div class="col text-right">
			<a class="button button--edit" href="<?HOST?>edit-jobs"> Редактировать</a>
		</div>
		<?php } ?>
	</div>
	<div class="row">
		<div class="col-xl-9 offset-3">

			<?php foreach($jobs as $job) { ?>
			<?php include ROOT . "templates/about/_card-job.tpl" ?>
			<?php } ?>

		</div>
	</div>
</div>
