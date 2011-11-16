//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(function(){

  $("input").on("change", function(){
    alert("hola");
    $(this).toggleClass("focused");
  })

  $( "input" ).delegate( "*", "focus blur", function( event ) {
    var elem = $( this );
    setTimeout(function() {
       elem.toggleClass( "focused", elem.is( ":focus" ) );
    }, 0);
  });

})


