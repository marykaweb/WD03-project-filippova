<?php
if ( $_GET['result'] == 'postDeleted' ) { ?>

	<div class="error" data-notify-hide>
		Пост успешно удален!
	</div>

	<?php	
}
if ( $_GET['result'] == 'postCreated' ) { ?>

		<div class="error error--success" data-notify-hide>
			Пост успешно добавлен!
		</div>

		<?php	
}
if ( $_GET['result'] == 'postUpdated' ) { ?>

			<div class="error error--success" data-notify-hide>
				Пост успешно отредактирован!
			</div>

			<?php	
}

?>
