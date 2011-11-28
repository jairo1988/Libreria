class Reserva < ActiveRecord::Base
  belongs_to :libro
  belongs_to :cuenta

  validates_presence_of :fecha_reserva, :libro_id, :cuenta_id, :cantidad
end
