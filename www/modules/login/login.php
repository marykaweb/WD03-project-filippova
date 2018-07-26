<?php

$title = "Вход на сайт";

if (isset($_POST['login'])) {

	if ( trim($_POST['email']) == '' ) {
		$errors[] = ['title' => 'Введите E-mail', 'desc' => '<p>Email обязателен дл регистрации на сайте</p>'];
	}

	if ( trim($_POST['password']) == '' ) {
		$errors[] = ['title' => 'Введите пароль'];
	}

	if ( R::count('users', 'email = ?', array($_POST['email']) ) == 0 ) {
		$errors[] = [
			'title' => 'Пользователь с таким email не существует', 
			'desc' => '<p>Для входа на сайт вы должны быть зарегестрированы</p>',
		];
	}

	if( empty($errors) ) {
		$user = R::findOne('users', 'email = ?', array($_POST['email']));

		if ( $user ) {
			if ( password_verify($_POST['password'], $user->password ) ) {
				$_SESSION['logged_user'] = $user;
				$_SESSION['login'] = "1";
				$_SESSION['role'] = $user->role;
				
				if( isset($_POST['rememberMe'] ) ) {
					ini_set('session.c_maxlifetime', 31104000);
					ini_set('session.cookie_mlifetime', 31104000);
				}

				header('Location: ' . HOST);
				exit();
			} else {
				$errors[] = ['title' => 'Пароль неверный!'];
			}
		}
	}
}



// центральная часть
ob_start();
include ROOT . "templates/login/form-login.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";




?>