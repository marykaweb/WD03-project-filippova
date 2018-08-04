<div class="container mb-50">
	<div class="row align-items-center mt-40">
		<div class="col offset-md-1">
			<div class="title-1 color">Профиль</div>
		</div>
		<div class="col text-right">
			<a class="button button--edit" href="<?=HOST?>profile-edit"> Редактировать</a>
		</div>
	</div>
	<div class="row offset-md-1">
		<div class="col-md-auto">
			<div class="avatar">
				<?php if ( $_SESSION['logged_user']['avatar'] != '' ) { ?>
				<img src="<?=HOST?>usercontent/avatar/<?=$currentUser->avatar?>" alt="<?=$currentUser->name?><?=$currentUser->secondname?>" />
				<?php } ?>
			</div>
		</div>
		<div class="col">
			<div class="user-info">
				<div class="user-info__title">Имя и фамилия</div>
				<div class="user-info__desc">
					<?=$currentUser->name?>
						<?=$currentUser->secondname?>
				</div>
			</div>
			<div class="user-info">
				<div class="user-info__title">Email</div>
				<div class="user-info__desc">
					<a href="mailto:google.com">
						<?=$currentUser->email?>
					</a>
				</div>
			</div>
			<div class="user-info">
				<div class="user-info__title">Страна, Город</div>
				<div class="user-info__desc">
					<?=$currentUser->country?>
						<?=$currentUser->city?>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-10">
			<div class="title-2 color">Комментарии пользователя</div>
			<div class="profile-comments mb-100">
			<?php 
			
			foreach ($comments as $comment) { ?>
			<div class="user-comment">
					<div class="user-comment-wrap">
						<div class="comment-wrap">
							<div class="user-name">
								<a href="#"><?=$comment['title']?></a>
							</div>
							<div class="user-date"><i class="far fa-clock"></i>
								<span class="user-date--dat"><?=$comment['date_time']?></span>
							</div>
						</div>
						<p class="user-text"><?=$comment['text']?></p>
					</div>
				</div>
			<?php } ?>
			</div>
		
			<div class="pagination">
				<?php if (count($row) > 5) { 
					$nextPage = $_GET['page'] + 1;
					$lastPage = $_GET['page'] - 1;
					?>
					<?php if( $_GET['page'] > 1 ) { ?>
						<a class="pagination__item pagination__item--prev " href="<?=HOST?>profile?page=<?=$lastPage?>">Назад</a>
					<?php } else { ?>
						<a class="pagination__item pagination__item--prev opacity-0" href="<?=HOST?>profile?page=<?=$lastPage?>">Назад</a>
					<?php }?>
					
					<?php for ($i=1; $i<=ceil(count($row)/5); $i++) { ?>
						<a class="pagination__item" href="<?=HOST?>profile?page=<?=$i?>"><?=$i?></a>
					<?php } ?>

					<?php if( $_GET['page'] < ceil(count($row)/5 ) ) { ?>
						<a class="pagination__item pagination__item--next" href="<?=HOST?>profile?page=<?=$nextPage?>">Вперед</a>
					<?php } else { ?>
						<a class="pagination__item pagination__item--next opacity-0" href="<?=HOST?>profile?page=<?=$nextPage?>">Вперед</a>
					<?php }?>
			<?php } ?>
			</div>

		</div>
	</div>
</div>
