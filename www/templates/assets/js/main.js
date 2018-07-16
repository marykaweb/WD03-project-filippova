$(document).ready(function() {
	/* For custom file inputs
			Based on code
			by Osvaldas Valutis, www.osvaldas.info (Available for use under the MIT License)
			and adapted for our project usage
	*/
	function checkForm() {
		var input = $('.page-form__row').children('input');
		var mail = $('.page-form__row').children('input[type=email]');
		var mailText = mail.val();
		var password = $('.page-form__row').children('input[type=password]');
		var passwordText = password.val();
		var error = '<div class="error hidden"></div>';
		var errorBlock = $('.page-form__header');
		var _pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;
		$('.error').remove();
		errorBlock.after(error);

		if (mailText == '' && passwordText == '') {
			$('.error').fadeIn();
			$('.error').text('Введите email и пароль');
			input.focus(function(event) {
				$('.error').fadeOut();
			});
		} else if (mailText == '') {
			$('.error').fadeIn();
			$('.error').text('Введите email');
			mail.focus(function(event) {
				$('.error').fadeOut();
			});
		} else if (passwordText == '') {
			$('.error').fadeIn();
			$('.error').text('Введите пароль');
			password.focus(function(event) {
				$('.error').fadeOut();
			});
		} else if ( mail.length && !_pattern.test(mailText) ) {
			$('.error').fadeIn();
			$('.error').text('Некорректный email');
			mail.focus(function(event) {
				$('.error').fadeOut();
			});
		} else {
			return true;
		}
	}
	$('.file').each(function() {
		var $input = $(this).find('.file__input'),
			$caption = $(this).find('.file__inner-caption'),
			captionVal = $caption.html();
		$input.on('change', function(e) {
			var fileName = '';
			if (this.files && this.files.length > 1)
				fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}', this.files.length);
			else if (e.target.value)
				fileName = e.target.value.split('\\').pop();
			if (fileName)
				$caption.html(fileName);
			else
				$caption.html(captionVal);
		});
		// Firefox bug fix
		$input
			.on('focus', function() { $input.addClass('has-focus'); })
			.on('blur', function() { $input.removeClass('has-focus'); });
	});
	// Firefox bug fix for checkboxes and radiobuttons
	$('.radio__input')
		.on('focus', function() { $(this).addClass('has-focus'); })
		.on('blur', function() { $(this).removeClass('has-focus'); });
	$('.checkbox__input')
		.on('focus', function() { $(this).addClass('has-focus'); })
		.on('blur', function() { $(this).removeClass('has-focus'); });
	$('.comment-add__button').on('click', function(e) {
		e.preventDefault();
		comment = $('.comment-add-block__text').children('.textarea');
		if (comment.val() == '') {
			$('.error').fadeIn();
			comment.focus(function(event) {
				$('.error').fadeOut();
			});
		}
	});
	// ----- check login form ----- //
	$('.button--enter').on('click', function(e) {
		e.preventDefault();
		checkForm();
		if (checkForm() == true) {
			$('#loginForm').submit();
		}
	});
	// ----- check registration form ----- //
	$('.button--registration').on('click', function(e) {
		e.preventDefault();
		checkForm();
		if (checkForm() == true) {
			$('#registrationForm').submit();
		}
	});
	// ----- check lost password form ----- //
	$('.button--lost').on('click', function(e) {
		e.preventDefault();
		checkForm();
		if (checkForm() == true) {
			$('#lostForm').submit();
		}
	});
	// ----- check lost password form ----- //
	$('.button--set-new-password').on('click', function(e) {
		e.preventDefault();
		checkForm();
		if (checkForm() == true) {
			$('#setNewPasswordForm').submit();
		}
	});
});
