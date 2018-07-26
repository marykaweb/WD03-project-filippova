<?php
	function dataFormPost($fieldName) {
		global $about;
		echo @$_POST[$fieldName] != '' ? $_POST[$fieldName] : $about[$fieldName];
	}
?>
	<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-1">
				<div class="title-1 m-0 pt-60">Редактировать обо мне</div>

				<?php require ROOT . "templates/_parts/errors.tpl"; ?>

				<form class="mb-100 pb-20 pt-35" action="edit-text" method="post" enctype="multipart/form-data">
					<div class="fieldset__title">Имя, Фамилия</div>
					<input name="name" class="input" placeholder="Имя и Фамилия" value="<?php dataFormPost('name'); ?>" />
					<div class="fieldset__title pt-30">Фотография</div>
					<div class="comment-row">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>
					<div class="control-row">
						<div class="file">
							<label class="file__label">
								<input name="photo" class="file__input" type="file" />
								<span class="file__inner-label">Выбрать файл</span>
							</label>
							<span class="file__inner-caption">Файл не выбран</span>
						</div>
					</div>
					<div class="about-editing-avatar">
						<img src="<?=HOST?>usercontent/about/<?=$about['photo']?>" alt="photo" />
					</div>
					<div class="fieldset__title">Информация на главной</div>
					<textarea id="ckeditor" name="description" class="textarea" rows="5" placeholder="Введите текст сообщения">
						<?php dataFormPost('description')?>
					</textarea>
					<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>
					<input type="submit" class="button button--save mt-20" name="textUpdate" value="Сохранить">
				</form>
			</div>
		</div>
	</div>
