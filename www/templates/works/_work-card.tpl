<div class="col-4 mb-50">
	<div class="card card-portfolio">
		<?php if ( $work->maket_small != '' ) { ?>
		<img class="card-portfolio__img" src="<?=HOST?>usercontent/works/<?=$work['maket_small']?>" alt="<?=$work['name']?>" />

		<?php } else { ?>
		<img class="card-post__img" height="158" src="<?=HOST?>usercontent/blog/nophoto.png" alt="nophoto" />
		<?php } ?>

		<div class="card-portfolio__body">
			<div class="title-4">
				<?=$work['work_name']?>
			</div>
			<a class="button" href="<?=HOST?>work-single?id=<?=$work['id']?>">Смотреть кейс</a>
		</div>
	</div>
</div>
