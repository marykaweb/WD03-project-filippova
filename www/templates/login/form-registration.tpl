<form id="registrationForm" method="post" action="<?=HOST?>registration" class="registration-page-form" novalidate>
	<div class="registration-page-form__header page-form__header">Регистрация</div>

	<?php require ROOT . "templates/_parts/errors.tpl"; ?>

	<div class="registration-page-form__row error-busy-email-password">
		<div class="error-with-desc">Данный email уже занят</div>
		<div class="error-with-desc-bottom">
			<div class="error-with-desc-text">
				<div class="p">Используйте другой email, чтобы создать новый аккаун </div>
				<div class="p mt-15">Или воспользуйтесь
					<a class="error-with-desc__link" href="#">восстановлением пароля</a> , чтобы войти на сайт.</div>
			</div>
		</div>
	</div>

	<div class="registration-page-form__row page-form__row">
		<input class="input" type="email" placeholder="E-mail" name="email" />
	</div>
	<div class="registration-page-form__row page-form__row">
		<input class="input" type="password" placeholder="Пароль" name="password" />
	</div>
	<div class="registration-page-form__footer">
		<input name="register" type="hidden" value="register" />
		<a class="button button--registration">Регистрация</a>
	</div>
</form>
