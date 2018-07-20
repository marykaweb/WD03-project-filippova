<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Удалить категорию</div>		

			<form action="<?=HOST?>blog/categories-delete?id=<?=$cat['id']?>" method="post" class="form mb-100 pb-20 pt-35">
				<div class="fieldset">
					<p>Вы действительно хотите удалить категорию <strong><?=$cat['cat_title']?></strong> с id <?=$cat['id']?>?</p>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="catDelete" class="button button--del button--big" value="Удалить">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>blog/categories">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
