<div class="main-wrapper">
	<div class="container container--center">
		<?php
				if ( isset($_GET['result']) ) {
					include ROOT . "templates/works/_result.tpl";;
				}
			?>
			<div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">
				<div class="title-1">Работы которые сделал я и моя команда</div>
				<?php if (isAdmin()) { ?>
				<div class="section-ui">
					<a class="button button--edit" href="<?HOST?>work-add"> Добавить работу</a>
				</div>
				<?php } ?>

			</div>
			<div class="row pb-35">
				<?php foreach ($works as $work) {
				include ROOT . "templates/works/_work-card.tpl";
			} ?>
			</div>
	</div>
</div>
