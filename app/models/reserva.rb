class Reserva < ActiveRecord::Base
  belongs_to :libro
  belongs_to :cuenta

  after_destroy :recalcular_stock_final
  before_save :calcula_stock_final
  after_save :actualiza_state

  validates_presence_of :fecha_reserva, :libro_id, :cuenta_id, :cantidad

  validates :cantidad, :numericality => {:less_than_or_equal_to => Proc.new {|c| c.libro.stock}}, :on => :create

  def calcula_stock_final
    libro.stock -= self.cantidad
    libro.save
  end
  private :calcula_stock_final

  def recalcular_stock_final
    if libro.stock > 0
      libro.stock += self.cantidad
      libro.save
    else
      libro.stock = self.cantidad
      libro.save
      libro.cancelar
    end

  end
  private :recalcular_stock_final

  def actualiza_state
    if libro.stock == 0
      libro.esperar
    end
  end


  end


