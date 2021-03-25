jQuery(document).ready(function($) {
	//
	// Menuicon
	//
	document.querySelector('.js-menuicon').onclick = function() {
		document.querySelector('.js-nav').classList.toggle('is-open');
	}


	//
	// Wow
	//
	// function afterReveal (el) {
	// 	el.addEventListener('animationend', function () {
	// 		document.querySelector('.wow').classList.add('is-open');

	// 		console.log('Working!');
	// 	});
	// }

	new WOW().init();


	// jQuery(document).ready(function($) {
	// 	function afterReveal (el) {
	// 		el.addEventListener('animationend', function () {
	// 			$('.feature').delay(5000).addClass('is-active');
	// 		});
	// 	}




	//
	// iScrolledIntoView
	//
	// var isIOS = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;

	// if (isIOS) {
	// 	$(window).on('scroll', function() {
	// 		$('.feature').each(function() {
	// 			if (isScrolledIntoView($(this))) {
	// 				$(this).addClass('is-active');
	// 			}
	// 		});
	// 	});

	// 	function isScrolledIntoView(elem) {
	// 		var docViewTop = $(body).scrollTop();
	// 		var docViewBottom = docViewTop + $(body).height();

	// 		var elemTop = $(elem).offset().top;
	// 		var elemBottom = elemTop + $(elem).height();

	// 		return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
	// 	}
	// } else {
	// 	$(window).on('scroll', function() {
	// 		$('.feature').each(function() {
	// 			if (isScrolledIntoView($(this))) {
	// 				$(this).addClass('is-active');
	// 			}
	// 		});
	// 	});

	// 	function isScrolledIntoView(elem) {
	// 		var docViewTop = $(window).scrollTop();
	// 		var docViewBottom = docViewTop + $(window).height();

	// 		var elemTop = $(elem).offset().top;
	// 		var elemBottom = elemTop + $(elem).height();

	// 		return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
	// 	}
	// }



	// $(window).on('scroll', function() {
	// 	$('.feature').each(function() {
	// 		if (isScrolledIntoView($(this))) {
	// 			$(this).addClass('is-active');
	// 		}
	// 	});
	// });

	// function isScrolledIntoView(elem) {
	// 	var docViewTop = $('body').scrollTop();
	// 	var docViewBottom = docViewTop + $('body').height();

	// 	var elemTop = $(elem).offset().top;
	// 	var elemBottom = elemTop + $(elem).height();

	// 	return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
	// }


	//
	// Input
  // $('input).each(function() {

  //   $(this).on('focus', function() {
  //     $(this).parent().parent('.gfield').addClass('is-focus');
  //   });

  //   $(this).on('blur', function() {
  //     if ($(this).val().length == 0) {
  //       $(this).parent().parent('.gfield').removeClass('is-focus');
  //     }
  //   });

  //   if ($(this).val() != '') $(this).parent('.css').addClass('is-focus');

  // });


	//
	// Header
	//
	// $(window).scroll(function() {
	// 		const scroll = $(window).scrollTop();

	// 		if (scroll >= 114) {
	// 			$('body').addClass('is-header-fixed');
	// 		} else {
	// 			$('body').removeClass('is-header-fixed');
	// 		}
	// });


	//
	// Scroll
	//
	$(window).scroll(function() {
			const scroll     = $(window).scrollTop();
			const heroHeight = $('.hero').height();

			console.log(heroHeight);

			if (scroll >= heroHeight + 300) {
				$('.js-scroll-top').addClass('is-active');
			} else {
				$('.js-scroll-top').removeClass('is-active');
			}
	});


})
