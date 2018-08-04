<form method="post" id="lostForm" action="<?=HOST?>lost-password" class="login-page-form" novalidate>
	<div class="login-page-form__header page-form__header">Забыли пароль?</div>

	<?php require ROOT . "templates/_parts/errors.tpl"; ?>
	<?php require ROOT . "templates/_parts/success.tpl"; ?>

	<div class="login-page-form__row page-form__row">
		<input class="input" type="email" data-field-mail placeholder="E-mail" name="email" value="info@test.ru" />
	</div>
	<div class="login-page-form__row text-center">
		<div class="login-page-form__col">
			<a class="login-page__links" href="<?=HOST?>login">Перейти на страницу вохода</a>
		</div>
	</div>
	<div class="login-page-form__footer">
		<input name="lost-password" type="hidden" value="lost-password" />
		<a class="button button--lost">Восстановить пароль</a>
	</div>
</form>
