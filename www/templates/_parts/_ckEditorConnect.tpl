<script src="<?=HOST?>libs/ckeditor/ckeditor.js"></script>
<script>
document.addEventListener('DOMContentLoaded', function() {
	CKEDITOR.replace('ckeditor', {
		customConfig: '<?=HOST?>templates/assets/js/ckeditorConfig.js'
	});
	CKEDITOR.replace('ckeditor2', {
		customConfig: '<?=HOST?>templates/assets/js/ckeditorConfig.js'
	});
	CKEDITOR.replace('ckeditor3', {
		customConfig: '<?=HOST?>templates/assets/js/ckeditorConfig.js'
	});
});

</script>
