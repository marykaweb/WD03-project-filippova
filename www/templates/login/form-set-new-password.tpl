<form method="post" id="setNewPasswordForm" class="login-page-form" action="<?=HOST?>set-new-password">
	<?php if ( $newPasswordReady == false ): ?>
	<div class="login-page-form__header page-form__header">Введите новый пароль</div>
	<?php endif ?>

	<?php require ROOT . "templates/_parts/errors.tpl" ?>
	<?php require ROOT . "templates/_parts/success.tpl" ?>

	<?php if ( $newPasswordReady == false ): ?>
	<div class="login-page-form__row page-form__row">
		<input class="input" type="password" placeholder="Пароль" name="password" />
	</div>
	<?php endif ?>
	<div class="login-page-form__row text-center">
		<div class="login-page-form__col text-center">
			<a class="login-page__links" href="<?=HOST?>login">Перейти на страницу входа</a>
		</div>
	</div>
	<div class="login-page-form__footer">
		<?php if ( $newPasswordReady == false ): ?>
		<input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
		<input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
		<input name="set-new-password" type="hidden" value="set-new-password" />
		<a class="button button--set-new-password">Установить пароль</a>
		<?php endif ?>
	</div>
</form>
