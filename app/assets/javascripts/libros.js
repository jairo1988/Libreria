jQuery(function() {

  return $('#libro_categoria_nombre').autocomplete({
    source: "/categorias"

   });
});

//Crear Datepiker calendario para seleccionar fecha de calendario
jQuery(function(){
  $.datepicker.regional['es'] = {
    clearText: 'Limpiar', clearStatus: '',
    closeText: 'Cerrar', closeStatus: '',
    prevText: '&lt;Ant', prevStatus: '',
    nextText: 'Sig&gt;', nextStatus: '',
    currentText: 'Hoy', currentStatus: '',
    monthNames: ['Enero','Febrero','Marzo','Abril','Mayo','Junio',
    'Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
    monthNamesShort: ['Ene','Feb','Mar','Abr','May','Jun',
    'Jul','Ago','Sep','Oct','Nov','Dic'],
    monthStatus: '', yearStatus: '',
    weekHeader: 'Sm', weekStatus: '',
    dayNames: ['Domingo','Lunes','Martes','Mi&eacute;rcoles','Jueves','Viernes','S&aacute;dabo'],
    dayNamesShort: ['Dom','Lun','Mar','Mi&eacute;','Juv','Vie','S&aacute;b'],
    dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','S&aacute;'],
    dayStatus: 'DD', dateStatus: 'D, M d',
    dateFormat: 'dd/mm/yy', firstDay: 1,
    initStatus: '', isRTL: false};
  $.datepicker.setDefaults($.datepicker.regional['es']);

  $(".fecha").datepicker({
    showOn: "focus",
    buttonImage: "images/calendar.gif",
    buttonImageOnly: true
  });



  /*$(".fecha").datepicker($.datepicker.regional['es']);*/









});

/*$(":input").delegate("*","focus blur",function(event){*/
  //var elem = $(this);
  //setTimeout(function(){
    //elem.toggleClass("focused", elem.is(":focus"));
  //},0);
/*});*/
