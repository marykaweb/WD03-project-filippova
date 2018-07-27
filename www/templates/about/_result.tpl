<?php
if ( $_GET['result'] == 'jobDeleted' ) { ?>

	<div class="error error--success mb-15" data-notify-hide>
		Место работы успешно удалено!
	</div>

	<?php	
	}
if ( $_GET['result'] == 'jobAdded' ) { ?>

	<div class="error error--success mb-15" data-notify-hide>
		Место работы успешно добавлено!
	</div>

	<?php	
	}
?>
