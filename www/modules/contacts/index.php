<?php
$title = "Контакты";

$contacts = R::load('contacts', 1);

if (isset($_POST['newMessage'])) {
	if (trim($_POST['email']) == '' ) {
		$errors[] = ['title' => 'Введите Email'];
	}
	if (trim($_POST['message']) == '' ) {
		$errors[] = ['title' => 'Введите текст сообщения'];
	}
	if( empty($errors) ) {
		$message = R::dispense('messages');
		$message->email = htmlentities($_POST['email']);
		$message->name = htmlentities($_POST['name']);
		$message->message = htmlentities($_POST['message']);
		$message->dateTime = R::isoDateTime();

		if ( isset($_FILES['file']['name']) && $_FILES['file']['tmp_name'] != '' ) {
			$fileName = $_FILES['file']['name'];
			$fileTmpLoc = $_FILES['file']['tmp_name'];
			$fileType = $_FILES['file']['type'];
			$fileSize = $_FILES['file']['size'];
			$fileErrorMsg = $_FILES['file']['error'];

			$kaboom = explode('.', $fileName);
			$fileExt = end($kaboom);

			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;

			if ( $fileSize > 4194304 ) {
				$errors[] = ['title' => 'Файл не должен быть более 4 Mb' ];
			}

			if ( !preg_match("/\.(gif|jpg|jpeg|png|pdf|doc|psd)$/i", $fileName) ) {
				$errors[]  = [ 'title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg, png, pdf, doc или psd.</p>', ];
			}

			if ( $fileErrorMsg == 1 ) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку' ];
			}

			$postImgFolderLocation = ROOT . 'usercontent/upload_files/';
			$uploadfile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка загрузки файла' ];
			}

			$message->message_file_name_original = $fileName;
			$message->message_file = $db_file_name;


		}

		R::store($message);

		$success[] = ['title' => 'Сообщение было успешно отправлено' ];

	}
}

ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/contact.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>