<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1 pb-90">
			<div class="title-1 m-0 pt-60 pb-35">Сообщения от пользователей</div>
			<?php
					if ( isset($_GET['result']) ) {
						include ROOT . "templates/contacts/_result.tpl";
					}
				?>
			<?php
					foreach($messages as $message) {					
						include ROOT . "/templates/contacts/message-card.tpl";
					}
				?>
		</div>
	</div>
</div>
