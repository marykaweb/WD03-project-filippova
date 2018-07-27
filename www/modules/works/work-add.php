<?php
if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}
$title = "Добавление работ";

if ( isset($_POST['workAdd'])) {
	if ( trim($_POST['work_name']) == '') {
		$errors[] = ['title' => 'Введите название работы' ];
	}
	if ( trim($_POST['description']) == '') {
		$errors[] = ['title' => 'Введите описание работы' ];
	}
	if ( empty($errors)) {
		$work = R::dispense('works');
		$work->work_name = htmlentities($_POST['work_name']);
		$work->description = $_POST['description'];
		$work->result = $_POST['result'];
		$work->technology = $_POST['technology'];
		$work->link_project = htmlentities($_POST['link_project']);
		$work->link_github = htmlentities($_POST['link_github']);
		$work->authorId = $_SESSION['logged_user']['id'];
		$work->dateTime = R::isoDateTime();

		if ( isset($_FILES["maket"]["name"]) && $_FILES["maket"]["tmp_name"] != "" ) {
			$fileName = $_FILES["maket"]["name"];
			$fileTmpLoc = $_FILES["maket"]["tmp_name"];
			$fileType = $_FILES["maket"]["type"];
			$fileSize = $_FILES["maket"]["size"];
			$fileErrorMsg = $_FILES["maket"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			list($width, $height) = getimagesize($fileTmpLoc);
			if($width < 10 || $height < 10){
				$errors[] = ['title' => 'Изображение не имеет размеров. Загрузите изображение побольше.' ];
			}

			if ( $fileSize > 4194304 ) {
				$errors[] = ['title' => 'Файл изображения не должен быть более 4 Mb' ];
			}

			if ( !preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName) ) {
				$errors[]  = [ 'title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg, или png.</p>', ];
			}

			if ( $fileErrorMsg == 1 ) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку' ];
			}

			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			$postImgFolderLocation = ROOT . 'usercontent/works/';
			$uploadfile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			
			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла' ];
			}
		
			include_once( ROOT . "/libs/image_resize_imagick.php");
			
			$target_file =  $postImgFolderLocation . $db_file_name;
			$wmax = 946;
			$hmax = 544;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($target_file);
			$work->maket = $db_file_name;

			$target_file =  $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . "320-" . $db_file_name;
			$wmax = 320;
			$hmax = 140;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			$work->maketSmall = "320-" . $db_file_name;
		}
		R::store($work);
		header('Location: ' . HOST . "works?result=workAdded");
		exit();
	}
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/works/work-add.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>