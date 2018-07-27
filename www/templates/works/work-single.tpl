		<div class="project container mb-100 mt-40 pb-20">
			<div class="project__header row mb-45">
				<div class="project__header-info col offset-sm-1">
					<div class="project__title title-1 mt-0 mb-20"><?=$work['work_name']?></div>
					<span class="project__name title-6"><?=$work['name']?> <?=$work['secondname']?></span>
					<span class="project__works title-6">
						<a href="<?=HOST?>works?>">Работы</a>
					</span>
					<span class="project__date title-6"><?=rus_date("j F Y H:i", strtotime($work['date_time']))?></span>
				</div>
					<?php if (isAdmin()) { ?>
				<div class="col text-right">
					<a class="button button--edit" href="<?=HOST?>work-edit?id=<?=$work['id']?>"> Редактировать</a>
					<a class="button button--del button--medium" href="<?=HOST?>work-delete?id=<?=$work['id']?>"> Удалить</a>
				</div>
				<?php } ?>
			</div>
			<?php if( $work['maket'] != '') {?>
			<div class="col-sm-10 offset-sm-1 pr-0 pl-0">
				<img src="<?=HOST?>usercontent/works/<?=$work['maket']?>" />
			</div>
			<?php } ?>
			<div class="row mt-55">
				<div class="col-sm-6 offset-sm-1">
					<div class="project-info user-content">
						<div class="title-3">Кратко о проекте</div>
						<?=$work['description']?>

						<?php if ( $work['result'] != '' ) { ?>
						<div class="title-3">Результат</div>
						<?=$work['result']?>
						<?php } ?>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="techs">
						<?php if ( $work['technology'] != '' ) { ?>
						<div class="title-3 mt-0">Технологии</div>
						<?=$work['technology']?>
						<?php } ?>
						<?php if ( $work['link_project'] != '' ) { ?>
						<div class="title-3 mt-40">Ссылка на проект</div>
						<a href="<?=$work['link_project']?>"><?=$work['link_project']?></a>
						<?php } ?>
						<?php if ( $work['link_project'] != '' ) { ?>
						
						<div class="title-3 mt-45">Код на github</div>
						<a href="<?=$work['link_project']?>"><?=$work['link_github']?></a>
						<?php } ?>
					</div>
				</div>
			</div>
			<div class="button-block offset-sm-1 mt-30">
				<a class="button " href="<?=HOST?>works"><i class="fas fa-arrow-left icon-style icon-style--back"></i>Все работы</a>
				<!-- <a class="button" href="#">Следующая работа<i class="fas fa-arrow-right icon-style"></i></a> -->
			</div>
		</div>