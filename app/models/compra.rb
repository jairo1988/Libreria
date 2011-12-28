class Compra < ActiveRecord::Base
  belongs_to :libro
  belongs_to :cuenta

  before_save :calcula_precio_total
  before_save :calcula_stock_final
  after_destroy :recalcular_stock

  validates_presence_of :fecha_compra, :libro_id, :cuenta_id, :cantidad #:pendiente_comprar

  validates :cantidad, :numericality => {:less_than_or_equal_to => Proc.new {|c| c.libro.stock}}, :on => :create
  #validates :cantidad, :with => :cantidad_correcta

  #def cantidad_correcta
    #if
      #errors.add(:cantidad, "no es correcta")
    #end
  #end
  #:private

  scope :comprado ,where(:comprado => true)
  scope :carrito ,where(:comprado => false)



  def calcula_precio_total
    self.precio_total = self.cantidad * self.libro.precio
  end
  private :calcula_precio_total

  def calcula_stock_final # al hacer una compra, resto el stock disponible menos la cantidad comprada
    libro.stock -= self.cantidad
    libro.save
  end
  private :calcula_stock_final

  def recalcular_stock #al eliminar el carrito, sumo la cantidad al stock disponible
    libro.stock +=self.cantidad
    libro.save
  end
  private :recalcular_stock



end
