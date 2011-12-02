class Compra < ActiveRecord::Base
  belongs_to :libro
  belongs_to :cuenta
  belongs_to :carrito

  before_save :calcula_precio_total

  validates_presence_of :fecha_compra, :libro_id, :cuenta_id, :cantidad #:pendiente_comprar

  scope :comprado ,where(:pendiente_comprar => true)
  scope :carrito ,where(:pendiente_comprar => false)


  def calcula_precio_total
    self.precio_total = self.cantidad * self.libro.precio
  end
  private :calcula_precio_total

end
