jQuery(function(){

  $('input#reserva_cantidad').change(function(){
    valor = $(this).val();
    stock = Number($("p.stock").text());
    stock_final = stock - valor;
    if (stock_final < 0) {
 /*     $("p.stock_final").css('color','red');*/
      $("p.stock_final").addClass("marcado");
    }
    $("p.stock_final").text(stock_final);
  })

})
