<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Редактировать профиль</div>

			<?php require ROOT . "templates/_parts/errors.tpl"; ?>

			<form class="form mb-100 pb-20 pt-35" action="<?=HOST?>profile-edit" method="post" enctype="multipart/form-data" novalidate>
				<div class="row fieldset">
					<div class="col-4">
						<label>
							<div class="fieldset__title">Имя</div>
							<input class="input" placeholder="Введите имя" name="name" value="<?=$currentUser->name?>" />
						</label>
					</div>
				</div>
				<div class="row fieldset">
					<div class="col-4">
						<label>
							<div class="fieldset__title">Фамилия</div>
							<input class="input" placeholder="Введите фамилию" name="secondname" value="<?=$currentUser->secondname?>" />
						</label>
					</div>
				</div>
				<div class="row fieldset">
					<div class="col-4">
						<label>
							<div class="fieldset__title">Email</div>
							<input class="input" type="email" placeholder="Введите email" name="email" value="<?=$currentUser->email?>" />
						</label>
					</div>
				</div>
				<div class="fieldset">
					<div class="fieldset__title">Фотография</div>
					<div class="avatar mb-10 mt-10">
						<?php if ( $_SESSION['logged_user']['avatar'] != '' ) { ?>
						<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar']?>" alt="<?=$_SESSION['logged_user']['name']?><?=$_SESSION['logged_user']['secondname']?>" />
						<?php } ?>
					</div>
					<div class="comment-row">Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</div>
					<div class="control-row">
						<div class="file">
							<label class="file__label">
								<input class="file__input" type="file" name="avatar" />
								<span class="file__inner-label">Выбрать файл</span>
							</label>
							<span class="file__inner-caption">Файл не выбран</span>
						</div>
					</div>
				</div>
				<div class="row fieldset">
					<div class="col-4">
						<label>
							<div class="fieldset__title">Страна</div>
							<input class="input" placeholder="Введите страну" name="country" value="<?=$currentUser->country?>" />
						</label>
					</div>
				</div>
				<div class="row fieldset mb-30">
					<div class="col-4">
						<label>
							<div class="fieldset__title">Город</div>
							<input class="input" placeholder="Введите город" name="city" value="<?=$currentUser->city?>" />
						</label>
					</div>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" class="button button--save" value="Сохранить" name="profile-update">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>profile">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
