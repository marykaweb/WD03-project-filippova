<?php
	foreach ($success as $item) {
		if ( count($item) == 1 ){ ?>
	<div class="error error--success mb-15">
		<?=$item['title']?>
	</div>
	<?php } else if ( count($item) == 2 ) { ?>
	<div class="error-with-desc error--success">
		<?=$item['title']?>
	</div>
	<div class="error-with-desc-bottom">
		<?=$item['desc']?>
	</div>

	<?php }
	}
?>
