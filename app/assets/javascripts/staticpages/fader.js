$(document).ready(function(){
	console.log('fader loaded')

var ourQuotes = function(){

	var quotes = $('#fader');
	var quoteIndex = -1;

	function showNextQuote(){
		++quoteIndex;
		quotes.eq(quoteIndex % quotes.length)
			.fadeIn(1000)
			.delay(3000)
			.fadeOut(1000, showNextQuote);
	}

	showNextQuote();

}();



	
	
	// $('#fader').find(function(){
	// 	$('tr').hide
	// setInterval(function(){
	// 	$('tr').delay(1000).fadeIn(3000, function(){

	// 	});
	// }, 3000);
	// });
});