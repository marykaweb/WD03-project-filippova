<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Добавить пост</div>

			<?php require ROOT . "templates/_parts/errors.tpl"; ?>

			<form action="<?=HOST?>blog/post-new" method="post" enctype="multipart/form-data" class="form mb-100 pb-20 pt-35">
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Название</div>
						<input class="input" name="postTitle" placeholder="Введите название" />
					</label>
				</div>
				<div class="fieldset">
					<div class="fieldset__title">Изображение</div>
					<div class="comment-row">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</div>
					<div class="control-row">
						<div class="file">
							<label class="file__label">
								<input class="file__input" type="file" name="postImg" />
								<span class="file__inner-label">Выбрать файл</span>
							</label>
							<span class="file__inner-caption">Файл не выбран</span>
						</div>
					</div>
				</div>
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Содержание</div>
						<textarea class="textarea height-200" rows="7" placeholder="Введите описание" name="postText"></textarea>
					</label>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="postNew" class="button button--save" value="Сохранить">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>blog">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
