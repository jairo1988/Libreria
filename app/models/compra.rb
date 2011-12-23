class Compra < ActiveRecord::Base
  belongs_to :libro
  belongs_to :cuenta

  before_save :calcula_precio_total
  before_save :calcula_stock_final

  validates_presence_of :fecha_compra, :libro_id, :cuenta_id, :cantidad #:pendiente_comprar

  validates :cantidad, :numericality => {:less_than_or_equal_to => Proc.new {|c| c.libro.stock}}, :on => :create


  scope :comprado ,where(:comprado => true)
  scope :carrito ,where(:comprado => false)



  def calcula_precio_total
    self.precio_total = self.cantidad * self.libro.precio
  end

  def calcula_stock_final
    libro.stock -= self.cantidad
    libro.save
  end


  private :calcula_precio_total
  private :calcula_stock_final

end
