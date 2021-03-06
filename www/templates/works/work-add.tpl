<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Добавить работу</div>
			<?php require ROOT . "templates/_parts/errors.tpl"; ?>

			<form method="post" action="work-add" class="form mb-100 pb-20 pt-35" enctype="multipart/form-data">
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Название</div>
						<input name="work_name" class="input" placeholder="Введите название работы" />
					</label>
				</div>
				<div class="fieldset">
					<div class="fieldset__title">Изображение</div>
					<div class="comment-row">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</div>
					<div class="control-row">
						<div class="file">
							<label class="file__label">
								<input name="maket" class="file__input" type="file" />
								<span class="file__inner-label">Выбрать файл</span>
							</label>
							<span class="file__inner-caption">Файл не выбран</span>
						</div>
					</div>
				</div>
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Содержание</div>
						<textarea id="ckeditor" name="description" class="textarea height-200" rows="7" placeholder="Введите описание"></textarea>
						<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>
					</label>
				</div>
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Результат</div>
						<textarea id="ckeditor2" name="result" class="textarea height-200" rows="7" placeholder="Введите описание"></textarea>
						<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>
					</label>
				</div>
				<div class="fieldset">
					<label>
						<div class="fieldset__title">Технологии</div>
						<textarea id="ckeditor3" name="technology" class="textarea height-200" rows="7" placeholder="Введите описание"></textarea>
						<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>
					</label>
				</div>
				<div class="row fieldset mb-30">
					<div class="col-4">
						<label>
							<div class="fieldset__title">Ссылка на проект</div>
							<input name="link_project" class="input" placeholder="Введите ссылку" />
						</label>
					</div>
					<div class="col-4">
						<label>
							<div class="fieldset__title">Ссылка на GitHub</div>
							<input name="link_github" class="input" placeholder="Введите ссылку" />
						</label>
					</div>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="workAdd" class="button button--save" value="Сохранить">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>works">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
