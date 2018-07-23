<?php

if ( $_GET['result'] == 'catCreated' ) { ?>

	<div class="error error--success" data-notify-hide>
		Категория успешно добавлена!
	</div>

	<?php	
}

if ( $_GET['result'] == 'catUpdated' ) { ?>

		<div class="error error--success" data-notify-hide>
			Категория успешно отредактирована!
		</div>

		<?php	
}

if ( $_GET['result'] == 'catDeleted' ) { ?>

			<div class="error" data-notify-hide>
				Категория удалена!
			</div>

			<?php	
}

?>
