<div class="container pb-60 pt-50">

	<?php
		if ( isset($_GET['result']) ) {
			include ROOT . 'templates/categories/_result.tpl';
		}
	?>

		<div class="row justify-content-between align-items-center pl-15 pr-15">
			<div class="title-1">Категории блога</div>
			<div class="section-ui">
				<a class="button button--edit" href="<?=HOST?>blog/categories-new"> Добавить категории</a>
			</div>
		</div>

		<table class="table">
			<thead class="thead-light">
				<tr>
					<th scope="col">id</th>
					<th scope="col">Название</th>
					<th scope="col">Редактировать</th>
					<th scope="col">Удалить</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ( $cats as $cat): ?>
				<tr>
					<th>
						<?=$cat['id']?>
					</th>
					<td>
						<?=$cat['cat_title']?>
					</td>
					<td>
						<a href="<?=HOST?>blog/categories-edit?id=<?=$cat['id']?>">Редактировать</a>
					</td>
					<td>
						<a href="<?=HOST?>blog/categories-delete?id=<?=$cat['id']?>">Удалить</a>
					</td>
				</tr>
				<?php endforeach ?>
			</tbody>
		</table>

</div>
