<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Удалить пост</div>

			<form action="<?=HOST?>blog/post-delete?id=<?=$post['id']?>" method="post" class="form mb-100 pb-20 pt-35">
				<div class="fieldset">
					<p>Вы действительно хотите удалить пост
						<strong>
							<?=$post['title']?>
						</strong> с id
						<?=$post['id']?>?</p>
				</div>
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="postDelete" class="button button--del button--big" value="Удалить">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>blog-post?id=<?=$post['id']?>">Отмена</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
