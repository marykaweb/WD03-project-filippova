<?php function skillItem($name, $title){ 
	global $skills; ?>
<div class="col-xl-2 col-md-2">
	<div class="fieldset__title technology__item-title">
		<?=$title?>
			<input name="<?=$name?>" class="input technology__item-input" placeholder="50" value="<?=$skills[$name]?>" />
	</div>
</div>
<?php }	?>
<div class="container mb-100">
	<form action="edit-skills" method="post">
		<div class="row">
			<div class="col-xl-10 offset-1">
				<div class="title-3 mt-50">Технологии</div>
				<?php require ROOT . "templates/_parts/errors.tpl"; ?>
				<div class="row mb-40">
					<?php skillItem('html', 'HTML5') ?>
					<?php skillItem('css', 'CSS') ?>
					<?php skillItem('js', 'JavaScript') ?>
					<?php skillItem('jquery', 'jQuery') ?>
				</div>
				<div class="row mb-40">
					<?php skillItem('php', 'PHP') ?>
					<?php skillItem('mysql', 'MySQL') ?>
				</div>
				<div class="row">
					<?php skillItem('git', 'Git') ?>
					<?php skillItem('gulp', 'Gulp') ?>
					<?php skillItem('npm', 'Npm') ?>
					<?php skillItem('yarn', 'Yarn') ?>

				</div>
				<input type="submit" class="button button--save mt-20" name="skillsUpdate" value="Сохранить">
			</div>
		</div>
	</form>
</div>
