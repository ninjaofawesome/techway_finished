console.log('fader loaded');	

function InOut( elem )
{
 elem.delay()
     .fadeIn(2000)
     .delay(3000)
     .fadeOut( 
               function(){ 
                   if(elem.next().length > 0)
                   {InOut( elem.next() );}
                   else
                   {InOut( elem.siblings(':first'));}
                         
                 }
             );
}

$(function(){
$('#content li').hide();
InOut( $('#content li:first') );

});


// THIS IS THE BEST WORKING ONE YET.  USE WITH THIS FOR THE UL 
// <li class= "faderReview" >"<%= review.review %>"</li>
// <li class= "faderName" >-<%= review.name %></li> 

// window.setInterval(function(){ 
// 	$('li.faderName').first().removeClass('faderName').addClass('hideMe')
//     $('li.faderReview').first().removeClass('faderReview').addClass('hideMe')
// }, 1000);

// var counter = 0;
// var i = setInterval(function(){             
//     $('li.faderName').first().fadeOut('faderName').fadeIn('showName')
// 	$('li.faderReview').first().fadeOut('faderReview').fadeIn('showReview');
// 	counter++;
//     if(counter === 100) {
//         clearInterval(i);
//     }
// }, 5000);

//kind of works!
// window.setInterval( function() {
// 	$('li.faderName').first().removeClass('faderName').addClass('showName')
// 	$('li.faderReview').first().removeClass('faderReview').addClass('showReview')
// }, 500)

// window.setInterval( function() {
// 	$('li.showName').first().removeClass('showName').addClass('helloName')
// 	$('li.showReview').first().removeClass('showReview').addClass('helloReview')
// }, 2000)

// window.setInterval( function() {
// 	$('li.helloName').first().removeClass('helloName').addClass('hideMe')
// 	$('li.helloReview').first().removeClass('helloReview').addClass('hideMe')
// }, 500)




//this works for the entire list
// window.setInterval( function() {
//   $('li.fader').each(function(index){$(this).fadeOut('li.fader')});
//   $('li.fader').each(function(index){$(this).fadeIn('li.fader')});
// }, 5000)


//fading part on its own with fader
// window.setInterval( function() {
//   $('.fader').fadeOut('fader')
//   $('.fader').fadeIn('fader')
// }, 5000)

//this does it once and stops
//setInterval(function(){$('.fader').removeClass('fader')},3000);

// function updateLoop() {
//    $('.fader').removeClass('fader')
// }

// setInterval(updateLoop,500);

//thisworks to remove and add a class.  kind of there.
// $(document).ready(function(){
// 	console.log('fader loaded')

// 	$('.fader').removeClass('fader').addClass('hello');
// });
