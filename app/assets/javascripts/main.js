$(document).ready(function(){
	$(window).on('resize', function() {
		$("#cover").removeClass("cover-margin");

		if ($(window).width() >= 768) {
			//alert("now changing");
			$("#navig-element").removeClass("m-navig-elements");
			$("#navig-element").addClass("navig-elements").show();
		};

		if ($(window).width() < 768){
			$("#navig-element").removeClass(".navig-elements");
			$("#navig-element").addClass("m-navig-elements").hide();
		};

		if ($(window).width() >= 501){
			$(".nav_toggle").show();
			$(".toggle_btn").hide();
		};

		if ($(window).width() < 501){
			$(".nav_toggle").hide();
			$(".toggle_btn").show();
		};
	});

	// $("#menu-btn").click(function(){
	// 	//$("#navig-element").slideToggle(300).addClass("m-navig-elements");
	// 	$("#navig-element").slideToggle( "fast", function() {
 //    		$(this).toggleClass("m-navig-elements", $(this).is(':visible'));
 //    		$("#cover").toggleClass("cover-margin");
 //  		});


 	$(document).on('click', '#menu-btn', function(){
		//$("#navig-element").slideToggle(300).addClass("m-navig-elements");
		$("#navig-element").slideToggle( "fast", function() {
    		$(this).toggleClass("m-navig-elements", $(this).is(':visible'));
    		$("#cover").toggleClass("cover-margin");
  		});


  		
	});

	$(document).on('click', '#contact', function(){
		$("#fullname").focus();
	});

	$(document).on('click', '#learn', function(){
		var scrollPos =  $(".middle-cover").offset().top;
		$(window).scrollTop(scrollPos);
	});

	//Dropdown menu
	$(document).on('click', '.dropdwn-toggle', function(){
		$('.dropdown-menu').slideToggle();
	});


	$(document).on('click', '.toggle_btn', function(){
		$('.nav_toggle').slideToggle();
	});

});