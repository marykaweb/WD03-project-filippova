<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Удалить работу</div>

			<form action="<?=HOST?>work-delete?id=<?=$work['id']?>" method="post" class="form mb-100 pb-20 pt-35">
				<div class="fieldset">
					<p>Вы действительно хотите удалить работу
						<strong>
							<?=$work['work_name']?>
						</strong> с id
						<?=$work['id']?>?</p>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="workDelete" class="button button--del button--big" value="Удалить">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>work-single?id=<?=$work['id']?>">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
