class Carrito < ActiveRecord::Base
  belongs_to :libro
  belongs_to :cuenta

  before_save :calcula_precio_total

  validates_presence_of :fecha_compra, :libro_id, :cuenta_id, :cantidad #:pendiente_comprar

  scope :comprado ,where(:pendiente_comprar => false)
  scope :comprar ,where(:pendiente_comprar => true)


  def calcula_precio_total
    self.precio_total = self.cantidad * self.libro.precio
  end
  private :calcula_precio_total

end
