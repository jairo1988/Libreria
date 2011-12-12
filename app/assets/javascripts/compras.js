jQuery(function(){

  $('#compra_cantidad').change(function(){
    valor = $(this).val();
    precio_libro = Number($("p.precio_libro").text());
    precio_total = precio_libro * valor;
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
