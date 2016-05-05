$('#preloader').show();

$(document).ready(function() {

	//owl caroousel1
	var owl = $('.owl-carousel');

	owl.owlCarousel({
	    loop:true,
	    nav:false,
	    items: 1,
	    autoplay: 3000,
	    autoplaySpeed: 1500,
	})
	
	$('.slider__prev').click(function() {
	    owl.trigger('prev.owl.carousel');
	})
	$('.slider__next').click(function() {
	    owl.trigger('next.owl.carousel');
	})

	//owl carousel2
	var owl2 = $('.owl-carousel2');

	owl2.owlCarousel({
	    loop:true,
	    nav:false,
	    items: 3,
	    margin: 35,
	    autoplay: 3000,
	    autoplaySpeed: 1500,
	    responsive:{
	        0:{
	            items:1
	        },
	        550:{
	            items:2
	        },
	        991:{
	            items:3
	        }
	    }
	})

	$('.food-menu__novelty__prev').click(function() {
	    owl2.trigger('prev.owl.carousel');
	})
	$('.food-menu__novelty__next').click(function() {
	    owl2.trigger('next.owl.carousel');
	})

	//call menu on mobile
	$(".toggle-button").click(function(event) {
		$(".header-wrapper__nav-mob").fadeIn("slow");
		$(this).fadeOut("slow");
	});
		//close menu
		$(".header-wrapper__nav-mob__close").click(function(event) {
			$(".header-wrapper__nav-mob").fadeOut("slow");
			$(".toggle-button").fadeIn("slow");
		});

	//call second menu on mobile
	$(".food-menu__button-down").click(function(event) {
		$(".food-menu__nav").slideToggle("slow");
	});
	//call third menu for food-menu-page
	$(".food-menu__button-down--menu").click(function(event) {
		$(".food-menu__sidebar__body").slideToggle("slow");
	});

	//call to form on bottom
	
		//call his fom with mafinific
		$('.open-popup, .button__contact-us').magnificPopup({
		  type:'inline',
		  midClick: true,
		  showCloseBtn: false
		});

		/*(".callback__form__close mfp-close").click(function(event) {
			$.magnificPopup.close();
		});*/



	//hide preloader
    $('#preloader').delay(500).fadeOut("slow");



});