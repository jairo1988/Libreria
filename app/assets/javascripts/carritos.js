jQuery(function(){

  $('#carrito_cantidad').change(function(){
    valor = $(this).val();
    precio_libro = Number($("p.precio_libro").text());
    precio_total = precio_libro * valor;
    $("p.precio_total").text(precio_total);
  })



})
