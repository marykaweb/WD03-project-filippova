<form method="post" id="loginForm" action="<?=HOST?>login" class="login-page-form" novalidate>
	<div class="login-page-form__header page-form__header">Вход на сайт</div>

	<?php require ROOT . "templates/_parts/errors.tpl"; ?>

	<div class="login-page-form__row page-form__row">
		<input class="input" type="email" placeholder="E-mail" name="email" />
	</div>
	<div class="login-page-form__row page-form__row">
		<input class="input" type="password" placeholder="Пароль" name="password" />
	</div>
	<div class="login-page-form__row">
		<div class="login-page-form__col">
			<div class="checkbox">
				<label class="checkbox__label">
					<input class="checkbox__input" type="checkbox" checked="checked" />
					<span class="checkbox__check-inner"></span>
					<span class="checkbox__check-inner-label">Запомнить меня</span>
				</label>
			</div>
		</div>
		<div class="login-page-form__col float-right">
			<a class="login-page__links" href="<?=HOST?>lost-password">Забыл пароль</a>
		</div>
	</div>
	<div class="login-page-form__footer">
		<input name="login" type="hidden" value="login" />
		<a class="button button--enter">Войти</a>
	</div>
</form>
