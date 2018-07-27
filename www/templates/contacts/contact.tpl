<div class="container mt-50">
	<?php if (isAdmin()) { ?>
	<div class="flex-wrap-button">
		<div class="mr-20">
			<a class="button button--edit" href="<?=HOST?>contacts-edit"> Редактировать</a>
		</div>
		<a class="button" href="<?=HOST?>messages">Сообщения</a>
	</div>
	<? } ?>
		<div class="row mb-80">
			<div class="col-md-10">
				<div class="row justify-content-between">
					<div class="col-md-6">
						<h2 class="title-2 extrabold">Контакты</h2>

						<?php function showContactItem($name, $title){
						global $contacts;
						if ( @$contacts[$name] != "") {  ?>

						<div class="row contact-item">
							<div class="col">
								<strong>
									<?=$title?>
								</strong>
							</div>
							<div class="col">
								<?php if ( $name == 'email'){ ?>
								<a class="contacts-block-info__item-link" target="_blank" href="mailto:<?=$contacts[$name]?>">
									<?=$contacts[$name]?>
								</a>
								<?php } else if ( $name == 'phone' ) { ?>
								<a class="contacts-block-info__item-link" target="_blank" href="tel:<?=$contacts[$name]?>">
									<?=$contacts[$name]?>
								</a>
								<?php } else if ( $name == 'skype' ) { ?>
								<a class="contacts-block-info__item-link" target="_blank" href="skype:<?=$contacts[$name]?>?chat">
									<?=$contacts[$name]?>
								</a>
								<?php } else if ( $name == 'github' ) { ?>
								<a class="contacts-block-info__item-link" target="_blank" href="<?=$contacts[$name]?>">Профиль GitHub</a>
								<?php } else { ?>
								<?=$contacts[$name]?>
									<?php } ?>

							</div>
						</div>

						<?php } 
					} ?>

						<?php showContactItem('name', 'Имя'); ?>
						<?php showContactItem('secondname', 'Фамилия'); ?>
						<?php showContactItem('email', 'Email'); ?>
						<?php showContactItem('skype', 'Skype'); ?>
						<?php showContactItem('github', 'Github'); ?>

						<?php if ( @$contacts['vk'] != "" || @$contacts['fb'] != "" || @$contacts['twitter'] != "" ) { ?>
						<div class="row contact-item">
							<div class="col">
								<strong>Социальные сети</strong>
							</div>
							<div class="col">

								<?php if ( @$contacts['vk'] != "") {  ?>
								<a class="contact-social-link" href="<?=$contacts['vk']?>" target="_blank">Профиль Вконтакте</a>
								<?php } ?>

								<?php if ( @$contacts['fb'] != "") {  ?>
								<a class="contact-social-link" href="<?=$contacts['fb']?>" target="_blank">Профиль Facebook</a>
								<?php } ?>

								<?php if ( @$contacts['twitter'] != "") {  ?>
								<a class="contact-social-link" href="<?=$contacts['twitter']?>" target="_blank">Профиль Twitter</a>
								<?php } ?>

							</div>
						</div>
						<?php } ?>

						<?php showContactItem('phone', 'Телефон'); ?>
						<?php showContactItem('address', 'Адрес'); ?>

					</div>
					<div class="col-md-5">
						<h2 class="title-2 extrabold">Связаться со мной</h2>

						<?php require ROOT . "templates/_parts/errors.tpl"; ?>
						<?php require ROOT . "templates/_parts/success.tpl"; ?>


						<form class="form" action="<?=HOST?>contacts" method='post' enctype="multipart/form-data">
							<input name="name" class="input mb-10" placeholder="Введите имя" />
							<input name="email" class="input mb-10" placeholder="Email" />
							<textarea name="message" class="textarea" rows="5" placeholder="Сообщение"></textarea>
							<div class="fieldset__title mt-20">Прикрепить файл</div>
							<div class="comment-row">jpg, png, pdf, doc, весом до 2Мб.</div>
							<div class="control-row mb-20">
								<div class="file">
									<label class="file__label">
										<input name="file" class="file__input" type="file" />
										<span class="file__inner-label file__inner-label--large-radius">Выбрать файл</span>
									</label>
									<span class="file__inner-caption">Файлы не выбран</span>
								</div>
							</div>
							<input type="submit" class="button button--save" name="newMessage" value="Отправить">
						</form>
					</div>
				</div>
			</div>
		</div>
</div>
<!-- google maps-->
<script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAm799yaN1ZBAnyf6PT3Y_iXSZLkG5w1oE&amp;callback=initMap"></script>
<script src="<?=HOST?>templates/assets/js/map.js"></script>
<!-- //google maps-->
<div class="map" id="map"></div>
