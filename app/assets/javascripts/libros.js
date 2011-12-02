jQuery(function() {

  return $('#libro_categoria_nombre').autocomplete({
    source: "/categorias"

   });
});

//Crear Datepiker calendario para seleccionar fecha de calendario
jQuery(function(){
  $(".fecha").datepicker({
    showOn: "focus",
    buttonImage: "images/calendar.gif",
    buttonImageOnly: true
  });
});

$(":input").delegate("*","focus blur",function(event){
  var elem = $(this);
  setTimeout(function(){
    elem.toggleClass("focused", elem.is(":focus"));
  },0);
});
