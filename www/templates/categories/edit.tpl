<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Редактировать категорию</div>

			<?php require ROOT . "templates/_parts/errors.tpl"; ?>

			<form action="<?=HOST?>blog/categories-edit?id=<?=$cat['id']?>" method="post" class="form mb-100 pb-20 pt-35">
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Название категории</div>
						<input class="input" name="catTitle" placeholder="Введите название" value="<?=$cat['cat_title']?>"/>
					</label>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="catEdit" class="button button--save" value="Сохранить">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>blog/categories">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
