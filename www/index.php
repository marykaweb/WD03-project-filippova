<?php

/* Путь до корневой директории скрипта по протоколу HTTP */
define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');
/* Физический путь до корневой директории */
define('ROOT', dirname(__FILE__) . '/');

$errors = array();
$success = array();

require ROOT . "config.php";
require ROOT . "db.php";
require ROOT . "libs/function.php";
session_start();

/* ------------------------------

РОУТЕР

------------------------------ */

$uri = $_SERVER["REQUEST_URI"];
$uri = rtrim($uri, "/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ( $uri[0] ) {
	case '':
		include ROOT . "modules/main/index.php";
		break;
	// :::::::::: USERS ::::::::::
	case 'login':
		include ROOT . "modules/login/login.php";
		break;
	case 'registration':
		include ROOT . "modules/login/registration.php";
		break;
	case 'logout':
		include ROOT . "modules/login/logout.php";
		break;
	case 'lost-password':
		include ROOT . "modules/login/lost-password.php";
		break;
	case 'set-new-password':
		include ROOT . "modules/login/set-new-password.php";
		break;
	case 'profile':
		include ROOT . "modules/profile/index.php";
		break;
	case 'profile-edit':
		include ROOT . "modules/profile/edit.php";
		break;

	default:
		include "modules/main/index.php";
		break;
}	

?>