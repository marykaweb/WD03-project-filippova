<?php
$title = "Контакты";

$contacts = R::load('contacts', 1);

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