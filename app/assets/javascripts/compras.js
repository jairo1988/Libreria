jQuery(function(){

  $('#compra_cantidad').change(function(){
    valor = $(this).val();
    precio_libro = Number($("p.precio_libro").text());
    precio_total = precio_libro * valor;
    stock = Number($("p.stock").text());
    stock_final = stock - valor;
    $("p.stock_final").text(stock_final);
    $("p.precio_total").text(precio_total);
  })


  $('a.comprar_libro').click(function(){
    url = $(this).attr('href').replace("edit","comprar");
    $.ajax({
      type: "PUT",
      url: url
    })

    return false;

  })
})
