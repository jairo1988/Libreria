class Reserva < ActiveRecord::Base
  belongs_to :proximo_libros
  belongs_to :cuenta
end
