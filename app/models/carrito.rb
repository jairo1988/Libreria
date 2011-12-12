#class Carrito
  #has_many :compras
  #belongs_to :cuenta

  ##scope :comprado ,where(:pendiente_comprar => true)
  ##scope :carrito ,where(:pendiente_comprar => false)

#end
